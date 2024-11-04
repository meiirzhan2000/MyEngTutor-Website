<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="MyEngTutor_Website.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <script src="New Scripts/index.js" defer></script>

    <!--BOOTSTRAP JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>


    <!-- FAVICON -->
    <link rel="icon" href="favicon.ico">
    
    <!-- FONT AWESOME CDN -->
    <script src="https://kit.fontawesome.com/b0dc89779d.js" crossorigin="anonymous"></script>

    <!-- GOOGLE FONTS -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Finger+Paint&display=swap" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Abhaya+Libre:wght@700&display=swap" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">


    <title>MyEngTutor</title>

    <!--BOOTSTRAP-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    
    <!-- STYLESHEETS -->
    <link rel="stylesheet" href="css/styles.css">


</head>
<body>
    <form id="form1" runat="server">
    <div class="container py-3 h-100">
        <div class="row pb-4">
            <div class="col">
                <nav aria-label="breadcrumb" class="bg-light rounded-3 p-3">
                    <ol class="breadcrumb mb-0">
                        <li class="breadcrumb-item"><a href="Default.aspx" runat="server" id="pageer1">Home</a></li>
                        <li class="breadcrumb-item active" runat="server" id="pageer" aria-current="page">Level</li>
                    </ol>
                </nav>
            </div>
            </div>
        </div>
    <div class="part1">
    <h1 id="skillName" runat="server">Reading Skills</h1>
    <img id="skillImage" runat="server" class="mainImg" src="Images/MainPageIMG.png" alt="mainPage img">
    <p class="explanation-1">
    This section helps you understand the types of tasks in reading exams.
    Reading exams can vary a lot and there are many different tasks you might be asked to do. Make sure you know exactly what you are going to be asked to do before you start a speaking exam.
    </p>

    <p class="explanation-2">
        You can often prepare for certain sections before the big day. Here are some typical activities you might do in a reading exam. Click on the links below or on the right-hand side of this page to watch six videos of different reading exams.   
    </p>

    <div class="exam-section">

        <div class="section-contents">
            <h2>Ready for the Exam? Make an attempt now to determine your Level !</h2>
            <a class="btn btn-primary btnExam" href="exam.aspx" id="btnExam" runat="server">TAKE READING EXAM&nbsp&nbsp&nbsp<i class="fa-solid fa-lg fa-pen"></i></a>
            
            <div class="exam-results">
                <p class="exam-score">You Scored : 0/10</p>
                <p class="exam-level">Result : PASS</p>
            </div>
            
        </div>

    </div>


    <div class="course-section">

        <h4>Enjoy Our Free Courses Now</h4>

        <div class="row">

            <div class="courses col-3">
                <div class="card">
                    <img class="courseImage" src="Images/foundation.PNG" alt="foundation">
                    <div class="card-body">
                        <h5>Foundation</h5>
                        <p class="course-desc">School.Classes.Sports.Friends</p>
                        <a runat="server" href="courseContents.aspx?button=WRITING,FOUNDATION" id="btnFoundation" class="btn btn-sm btn-outline-light btn-contents"><i class="fa-solid fa-play"></i>&nbsp&nbsp&nbspStart Now</a>
                        
                    </div>
                </div>
            </div>

            <div class="courses col-3">
                <div class="card">
                    <img class="courseImage" src="Images/preIntermediate.PNG" alt="preIntermediate">
                    <div class="card-body">
                        <h5>Pre-Intermediate</h5>
                        <p class="course-desc">School.Classes.Sports.Friends</p>
                        <a runat="server" href="courseContents.aspx?button=PRE-INTERMEDIATE" id="btnPIntermediate" class="btn btn-sm btn-outline-dark btn-contents"><i class="fa-solid fa-play"></i>&nbsp&nbsp&nbspStart Now</a>
                        
                    </div>
                </div>
            </div>

            <div class="courses col-3">
                <div class="card">
                    <img class="courseImage" src="Images/intermediate.PNG" alt="advanced">
                    <div class="card-body">
                        <h5>Intermediate</h5>
                        <p class="course-desc">School.Classes.Sports.Friends</p>
                        <a runat="server" href="courseContents.aspx?button=INTERMEDIATE" id="btnIntermediate" class="btn btn-sm btn-outline-dark btn-contents"><i class="fa-solid fa-play"></i>&nbsp&nbsp&nbspStart Now</a>
                        
                    </div>
                </div>
            </div>

            <div class="courses col-3">
                <div class="card">
                    <img class="courseImage" src="Images/advanced.PNG" alt="advanced">
                    <div class="card-body">
                        <h5>Advanced</h5>
                        <p class="course-desc">School.Classes.Sports.Friends</p>
                        <a runat="server" href="courseContents.aspx?button=ADVANCED" id="btnAdvanced" class="btn btn-sm btn-outline-dark btn-contents"><i class="fa-solid fa-play"></i>&nbsp&nbsp&nbspStart Now</a>
                        
                    </div>
                </div>
            </div>

        </div>
    </div>

    </form>
</body>
</html>