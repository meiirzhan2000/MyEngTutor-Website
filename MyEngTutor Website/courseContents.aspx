<%@ Page Language="C#" AutoEventWireup="true" CodeFile="courseContents.aspx.cs" Inherits="MyEngTutor_Website.courseContents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <script src="New Scripts/courseContents.js" defer></script>

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
    <link rel="stylesheet" href="css/courseContentStyles.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container py-3 h-100">
            <div class="row pb-4">
                <div class="col">
                    <nav aria-label="breadcrumb" class="bg-light rounded-3 p-3">
                        <ol class="breadcrumb mb-0">
                            <li class="breadcrumb-item"><a href="userPage.aspx" runat="server" id="pageer1">Home</a></li>
                            <li class="breadcrumb-item"><a href="index.aspx" runat="server" id="A1">Level</a></li>
                            <li class="breadcrumb-item active" runat="server" id="pageer" aria-current="page">Skill</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <div class="row title">
            <img runat="server" id="levelImage" class="col-lg-auto title-img" src="Images/foundation-removebg.png" alt="foundation" />
            <h1 runat="server" id="levelHeader" class="col-lg-auto level">INTERMEDIATE</h1>
        </div>


        <p id="transferer" runat="server" style="display: none"></p>


        <div class="tasks">
            <h3 runat="server" id="taskHeader">Reading Tasks
            </h3>


            <a class="enter-unit" href="unitPage.aspx" style="display: none">
                <div class="row units">
                    <div class="col-lg-10 col-md-12 col-sm-10 col-">
                        <h3 runat="server" id="uniter">Unit 1: Alphabets and Numbers</h3>
                    </div>
                    <div class="col-lg-auto col-md-auto col-sm-auto question-count">
                        <h6 runat="server" id="uniterQuestionCount">40 QUESTIONS</h6>
                    </div>
                    <div class="col-lg-auto col-md-auto col-sm-auto  enter-icon">
                        <i class="fa-solid fa-chevron-right fa-2x"></i>
                    </div>

                </div>
            </a>


        </div>
        <!--
     <div class="row quiz-section">
         <button class="btn quiz-button">TAKE QUIZ</button>

     </div>
        -->

    </form>
</body>
</html>
