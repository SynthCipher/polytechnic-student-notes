$folders = @(
    "c:\Users\jigma\OneDrive\Desktop\Poly technic\class1\c-lab-programs",
    "c:\Users\jigma\OneDrive\Desktop\Poly technic\class2",
    "c:\Users\jigma\OneDrive\Desktop\Poly technic\class3",
    "c:\Users\jigma\OneDrive\Desktop\Poly technic\class3\open-source-chapters"
)

foreach ($folder in $folders) {
    $files = Get-ChildItem "$folder\*.html"
    foreach ($file in $files) {
        $content = Get-Content $file.FullName -Raw
        
        # Determine relative path for assets
        $depth = ($folder.Replace("c:\Users\jigma\OneDrive\Desktop\Poly technic\", "").Split("\")).Count
        $relPath = "../" * $depth
        
        # Update head with favicon
        if ($content -notmatch "logo1.png") {
            $content = $content -replace "</title>", "</title>`n    <link rel='icon' type='image/png' href='$($relPath)assets/logo1.png'>"
        }
        
        # Update Navbar
        $newNav = @"
    <nav class="navbar">
        <a href="$($relPath)index.html" class="nav-logo">
            <img src="$($relPath)assets/logo.png" alt="Logo">
            <span>GPC LEH</span>
        </a>
    </nav>
"@
        $content = $content -replace '<nav class="navbar">[\s\S]*?</nav>', $newNav
        
        # Update Footer
        $newFooter = @"
    <footer>
        <div class="footer-content">
            <p>&copy; 2026 GPC LEH | Design by Jigmat and <a href="https://onela.in" target="_blank">onela.in</a></p>
        </div>
    </footer>
"@
        $content = $content -replace '<footer>[\s\S]*?</footer>', $newFooter
        
        [System.IO.File]::WriteAllText($file.FullName, $content)
    }
}
