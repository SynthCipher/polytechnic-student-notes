$files = Get-ChildItem "c:\Users\jigma\OneDrive\Desktop\Poly technic\class1\c-lab-programs\prog*.html"

foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw
    
    # Rename heading
    $content = $content -replace "Detailed Note & Definition", "Definition"
    
    [System.IO.File]::WriteAllText($file.FullName, $content)
}
