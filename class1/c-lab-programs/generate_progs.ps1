$template = @"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>C Program {0}: {1} | GPC LEH</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Outfit:wght@700;800&family=Fira+Code:wght@400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../../css/style.css">
    <link rel="icon" type="image/png" href="../../assets/logo1.png">
</head>
<body>
    <nav class="navbar">
        <a href="../../index.html" class="nav-logo">
            <img src="../../assets/logo.png" alt="Logo">
            <span>GPC LEH</span>
        </a>
    </nav>
    <header class="hero">
        <div class="hero-content">
            <a href="../c-lab.html" class="btn-back"><i class="fas fa-arrow-left"></i> Back to Lab</a>
            <h1>{2}</h1>
            <p class="subtitle">Practical {0}: {3}</p>
        </div>
    </header>
    <main class="section-container">
        <div class="note-card">
            <h3>Detailed Note & Definition</h3>
            <p>{4}</p>
        </div>

        <div class="note-card" style="border-left-color: var(--primary); background: rgba(99, 102, 241, 0.05);">
            <h3><i class="fas fa-lightbulb"></i> Real-Life Analogy</h3>
            <p>{8}</p>
        </div>
        
        <h3 class="section-title">Program Example</h3>
        <div class="code-block"><pre>{5}</pre></div>

        <h3 class="section-title">Expected Output</h3>
        <div class="output-box"><pre>{6}</pre></div>

        <div class="homework-card">
            <h3><i class="fas fa-edit"></i> Homework / Practice Question</h3>
            <p>{7}</p>
        </div>

        <h3 class="section-title">How to Compile & Run</h3>
        <div class="compiler-grid">
            <div class="compiler-box">
                <h4><i class="fas fa-terminal"></i> Modern GCC (Shortcut)</h4>
                <p>If you are using <strong>Dev-C++</strong> or <strong>Code::Blocks</strong>:</p>
                <ul style="margin-left: 1.5rem; margin-top: 0.5rem;">
                    <li>Press <strong>F11</strong> to Compile and Run instantly.</li>
                    <li>Or press <strong>F9</strong> to just Compile.</li>
                </ul>
                <p style="margin-top: 1rem; font-size: 0.8rem; opacity: 0.7;">Command Line: <code>gcc PROG{0}.C -o p{0} && ./p{0}</code></p>
            </div>
            <div class="compiler-box">
                <h4><i class="fas fa-desktop"></i> Turbo C++</h4>
                <ol style="margin-left: 1.5rem;">
                    <li>Open <code>TC.EXE</code></li>
                    <li>Press <strong>Alt + F9</strong> to Compile</li>
                    <li>Press <strong>Ctrl + F9</strong> to Run</li>
                </ol>
            </div>
        </div>
    </main>
    <a href="../../index.html" class="floating-home"><i class="fas fa-home"></i></a>
    <footer>
        <div class="footer-content">
            <p>&copy; 2026 GPC LEH | Design by Jigmat and <a href="https://onela.in" target="_blank">onela.in</a></p>
        </div>
    </footer>
</body>
</html>
"@

$programs = @(
    @{ID=1; Title="Executing & Editing"; TitleBr="Starting <br><span style='color: var(--primary);'>with C</span>"; Subtitle="Simple program to start."; Note="C is a compiled language. The process involves writing source code (.c), compiling it into object code, and linking it to create an executable file (.exe). The #include <stdio.h> is a preprocessor directive that tells the compiler to include standard input-output library functions like printf(). The int main() is the entry point, and return 0 indicates successful completion."; Code="#include <stdio.h>\n\nint main() {\n    printf(\"Welcome to C Programming Lab!\\n\");\n    return 0;\n}"; Output="Welcome to C Programming Lab!"; Homework="Modify the program to print your Full Name, Semester, and Roll Number on separate lines."; Analogy="Think of a C program like a formal letter. The Header is the address, the Main function is the body where you write the message, and Return 0 is the formal closing like 'Yours Sincerely'."},
    @{ID=2; Title="Variables & Assignments"; TitleBr="Storing <br><span style='color: var(--primary);'>Numbers</span>"; Subtitle="Data types and initialization."; Note="Variables are like small storage boxes in the computer's memory. In C, you must declare the type of box (int for integers, float for decimals, char for characters). The '=' sign is the assignment operator, which 'puts' a value inside the box."; Code="#include <stdio.h>\n\nint main() {\n    int age = 20;\n    float marks = 85.5;\n    printf(\"Age: %d, Marks: %.1f\\n\", age, marks);\n    return 0;\n}"; Output="Age: 20, Marks: 85.5"; Homework="Create variables for your 'Year' and 'Percentage' and print them with labels."; Analogy="Variables are like labeled jars in a kitchen. You have a jar for salt (int), a jar for oil (float), and a jar for a spoon (char). You label them so you don't mix up the items inside."},
    @{ID=3; Title="Arithmetic & Relational"; TitleBr="Math & <br><span style='color: var(--primary);'>Logic</span>"; Subtitle="Using operators."; Note="Arithmetic operators (+, -, *, /, %) perform calculations. Relational operators (>, <, ==) compare two values and return 1 (True) or 0 (False). These are the building blocks of logic in any program."; Code="#include <stdio.h>\n\nint main() {\n    int a = 15, b = 4;\n    printf(\"Sum: %d\\n\", a + b);\n    printf(\"Is a > b? %d\\n\", a > b);\n    return 0;\n}"; Output="Sum: 19\nIs a > b? 1"; Homework="Write a program to calculate the Area of a Square and check if it is greater than 50."; Analogy="Arithmetic operators are like a calculator app on your phone. Relational operators are like comparing two prices in a shop to see which one is cheaper."},
    @{ID=4; Title="Expressions Evaluation"; TitleBr="Solving <br><span style='color: var(--primary);'>Math</span>"; Subtitle="Operator precedence."; Note="C follows specific rules called 'Precedence' (like BODMAS). Multiplication and Division are done before Addition and Subtraction. Using brackets () is the best way to ensure the math is done in the order you want."; Code="#include <stdio.h>\n\nint main() {\n    int result = (10 + 5) * 2 / 5;\n    printf(\"Result: %d\\n\", result);\n    return 0;\n}"; Output="Result: 6"; Homework="Evaluate 5 + 10 * 2 / (4 - 2) and verify with a C program."; Analogy="Precedence is like following a recipe. You must boil the water before adding the noodles; if you do it in the wrong order, the result won't be good!"},
    @{ID=5; Title="Formatting I/O"; TitleBr="Input & <br><span style='color: var(--primary);'>Output</span>"; Subtitle="Using printf and scanf."; Note="Standard I/O functions allow you to talk to the computer. 'printf' is for output, and 'scanf' is for input. Format specifiers like %d and %f act as placeholders for the data you want to display or read."; Code="#include <stdio.h>\n\nint main() {\n    int n;\n    printf(\"Enter a number: \");\n    scanf(\"%d\", &n);\n    printf(\"You entered: %d\\n\", n);\n    return 0;\n}"; Output="Enter a number: 10\nYou entered: 10"; Homework="Take your age as input and print it formatted with leading zeros using %03d."; Analogy="Input/Output is like a conversation. Printf is you speaking to the computer, and Scanf is the computer listening to what you say and remembering it."},
    @{ID=6; Title="If Statement"; TitleBr="Checking <br><span style='color: var(--primary);'>Condition</span>"; Subtitle="Conditional execution."; Note="The 'if' statement is like a gatekeeper. It checks a condition, and only if that condition is True, it allows the code inside to run. It is the most basic way to make a program 'smart'."; Code="#include <stdio.h>\n\nint main() {\n    int n = 20;\n    if(n >= 18) printf(\"Eligible to Vote.\\n\");\n    return 0;\n}"; Output="Eligible to Vote."; Homework="Write a program to print 'Positive' if a number is greater than 0."; Analogy="An 'if' statement is like checking the weather. IF it is raining, you take an umbrella. If it is NOT raining, you don't do anything."},
    @{ID=7; Title="If-Else Statement"; TitleBr="Yes or <br><span style='color: var(--primary);'>No</span>"; Subtitle="Conditional branching."; Note="The 'if-else' statement handles two different paths. It's like a fork in the road—if the condition is True, you go one way; if it's False, you MUST go the other way."; Code="#include <stdio.h>\n\nint main() {\n    int n = 7;\n    if(n % 2 == 0) printf(\"Even\\n\"); else printf(\"Odd\\n\");\n    return 0;\n}"; Output="Odd"; Homework="Check if a student is 'Pass' or 'Fail' based on 40 marks."; Analogy="If-else is like a traffic light. IF the light is green, you GO. ELSE (if it's red), you STOP. There is no other option."},
    @{ID=8; Title="Switch Statement"; TitleBr="Choose <br><span style='color: var(--primary);'>Option</span>"; Subtitle="Multi-way branching."; Note="Switch-case is a cleaner way to handle many options. Instead of writing many if-else statements, you can define different 'cases' for a single variable. The 'break' keyword is vital to stop the program from running all other cases."; Code="#include <stdio.h>\n\nint main() {\n    int color = 1;\n    switch(color) {\n        case 1: printf(\"Red\\n\"); break;\n        default: printf(\"Other\\n\");\n    }\n    return 0;\n}"; Output="Red"; Homework="Create a menu for choosing a Day of the Week (1-7)."; Analogy="Switch is like a restaurant menu. You choose a number (Case 1 for Burger, Case 2 for Pizza), and the waiter brings you exactly what you ordered."},
    @{ID=9; Title="Do-While Statement"; TitleBr="Repeat <br><span style='color: var(--primary);'>Once</span>"; Subtitle="Post-test loops."; Note="The do-while loop is a 'Post-Test' loop. This means the computer runs the code FIRST and then checks the condition. This ensures that the code inside always runs at least one time."; Code="#include <stdio.h>\n\nint main() {\n    int i = 1;\n    do { printf(\"%d \", i++); } while(i <= 3);\n    return 0;\n}"; Output="1 2 3"; Homework="Print numbers from 5 down to 1 using do-while."; Analogy="Do-while is like trying a sample at a food stall. You eat the sample FIRST (do), and THEN you decide if you want to buy more (while)."},
    @{ID=10; Title="For Statement"; TitleBr="Counting <br><span style='color: var(--primary);'>Loop</span>"; Subtitle="Controlled iteration."; Note="The 'for' loop is the most compact loop. It puts the starting value, the condition, and the step (increment) all in one line. It is perfect for counting from one number to another."; Code="#include <stdio.h>\n\nint main() {\n    for(int i=1; i<=5; i++) printf(\"%d \", i);\n    return 0;\n}"; Output="1 2 3 4 5"; Homework="Print the multiplication table of 2 using a for loop."; Analogy="A for-loop is like an alarm clock that repeats every day. You tell it when to start, how many times to repeat, and when to stop."},
    @{ID=11; Title="1D Array"; TitleBr="List of <br><span style='color: var(--primary);'>Items</span>"; Subtitle="Linear storage."; Note="An array is a way to store many items of the same type in one single variable name. You access each item using an 'index' number, which always starts at 0."; Code="#include <stdio.h>\n\nint main() {\n    int arr[3] = {10, 20, 30};\n    printf(\"%d\\n\", arr[0]);\n    return 0;\n}"; Output="10"; Homework="Create an array of 5 marks and calculate their sum."; Analogy="An array is like a row of lockers in a school. All lockers are the same size, but each locker has a unique number (index) and contains different books."},
    @{ID=12; Title="2D Array"; TitleBr="Table <br><span style='color: var(--primary);'>Array</span>"; Subtitle="Matrix storage."; Note="A 2D array is an array of arrays. It represents data in rows and columns, just like an Excel sheet or a mathematical matrix. You need two indices to find a value: [row][column]."; Code="#include <stdio.h>\n\nint main() {\n    int table[2][2] = {{1,2},{3,4}};\n    printf(\"%d\\n\", table[0][0]);\n    return 0;\n}"; Output="1"; Homework="Store and print a 2x2 matrix of integers."; Analogy="A 2D array is like a theater seating chart. You have Rows (A, B, C) and Seats (1, 2, 3). To find your seat, you need both the Row and the Seat number."},
    @{ID=13; Title="Structures"; TitleBr="Group <br><span style='color: var(--primary);'>Data</span>"; Subtitle="Custom data types."; Note="Structures (struct) allow you to group different types of variables together. For example, a 'Student' has an ID (int) and a Grade (char). Structures make it easy to manage complex data."; Code="#include <stdio.h>\nstruct Student { int id; float marks; };\nint main() {\n    struct Student s = {101, 95.0};\n    printf(\"ID: %d\\n\", s.id);\n    return 0;\n}"; Output="ID: 101"; Homework="Define an 'Employee' struct with ID and Salary."; Analogy="A structure is like a Passport. It contains different types of information (Name, Date of Birth, Passport Number) all belonging to one single person."},
    @{ID=14; Title="Pointers"; TitleBr="Memory <br><span style='color: var(--primary);'>Address</span>"; Subtitle="Direct memory access."; Note="Pointers are variables that store the memory 'address' of another variable instead of a value. They are used for advanced tasks like dynamic memory and efficient data handling."; Code="#include <stdio.h>\n\nint main() {\n    int n = 10, *p = &n;\n    printf(\"Value: %d, Address: %p\\n\", *p, p);\n    return 0;\n}"; Output="Value: 10, Address: 0x7ffd..."; Homework="Add two numbers using pointers."; Analogy="A pointer is like a Treasure Map. It doesn't contain the treasure itself, but it tells you exactly WHERE the treasure is hidden in the ground (memory)."}
)

foreach ($p in $programs) {
    $c = $template
    $c = $c.Replace("{0}", $p.ID)
    $c = $c.Replace("{1}", $p.Title)
    $c = $c.Replace("{2}", $p.TitleBr)
    $c = $c.Replace("{3}", $p.Subtitle)
    $c = $c.Replace("{4}", $p.Note)
    $c = $c.Replace("{5}", $p.Code)
    $c = $c.Replace("{6}", $p.Output)
    $c = $c.Replace("{7}", $p.Homework)
    $c = $c.Replace("{8}", $p.Analogy)
    
    $path = "c:\Users\jigma\OneDrive\Desktop\Poly technic\class1\c-lab-programs\prog$($p.ID).html"
    [System.IO.File]::WriteAllText($path, $c)
}
