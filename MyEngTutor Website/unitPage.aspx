<%@ Page Language="C#" AutoEventWireup="true" CodeFile="unitPage.aspx.cs" Inherits="MyEngTutor_Website.unitPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <script src="New Scripts/unitPage.js" defer></script>
    
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

    <title>MyEngTutor</title>

    <!--BOOTSTRAP-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <!-- STYLESHEETS -->
    <link rel="stylesheet" href="css/unitPageStyles.css">


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
                            <li class="breadcrumb-item"><a href="courseContents.aspx" runat="server" id="A2">Units</a></li>
                            <li class="breadcrumb-item active" runat="server" id="pageer" aria-current="page">Current Unit</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    <p id="unitTransferer" runat="server" style="display:none"></p>

    <p id="transfererA" runat="server" style="display:none"></p>
    <p id="transfererB" runat="server" style="display:none"></p>
    <p id="transfererC" runat="server" style="display:none"></p>

    <p id="answersA" runat="server" style="display:none"></p>
    <p id="answersB" runat="server" style="display:none"></p>
    <p id="answersC" runat="server" style="display:none"></p>

    <p id="score" runat="server" style="display:none"></p>


    <div class="row title">
        <img id="levelImage" class="col-lg-auto title-img" src="Images/foundation-removebg.png" alt="foundation">
        <h1 id="levelHeader" runat="server" class="col-lg-auto level">AAAA</h1>
    </div>

    <div class="tasks">
        <h3 id="taskHeader" runat="server">Unit 1: Alphabets and Numbers</h3>
    </div>  

        
    <div class="reading-task">
        <iframe width="560" height="315" src="https://www.youtube.com/embed/Ln5qotRMJvI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    </div>
    

    <div class="questions-section">

      <div class="accordion" id="accordionFlushExample">

        <div class="accordion-item body-collapse test">
          <h2 class="accordion-header section-header" id="flush-headingThree">
            <button runat="server" id="transcript" class="accordion-button collapsed btn-collapse" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
              TRANSCRIPT</button>
          </h2>

          <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushExample">
            <div runat="server" id="transcriptBody" class="accordion-body">
              LOREM IPSUM DOLOR SIN AMET
            </div>
          </div>
        </div>


        <div class="accordion-item body-collapse">
          <h2 class="accordion-header section-header" id="flush-headingOne">
            <button class="accordion-button collapsed btn-collapse" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
              SECTION A
            </button>
          </h2>

          <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
            <div class="accordion-body">

              <div class="questionsA" style="display:none">
                <p>1. Aphantasia is a condition, which describes people, for whom it is hard to visualise mental images.</p>

                <div class="dropdown">
                  <button class="btn btn-secondary dropdown-toggle ddButton" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    SELECT&nbsp&nbsp&nbsp
                  </button>

                  <!--<span>HEELOW</span> to add tick and cross icon later--> 

                  <ul class="dropdown-menu menu-stuff" aria-labelledby="dropdownMenuButton1">
                    <a class="dropdown-item">TRUE</a>
                    <a class="dropdown-item">FALSE</a>

                  </ul>
                </div>
              </div>

            </div>
          </div>
        </div>


        <div class="accordion-item body-collapse">
          <h2 class="accordion-header section-header" id="flush-headingTwo">
            <button class="accordion-button collapsed btn-collapse" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
              SECTION B
            </button>
          </h2>

          <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
            <div class="accordion-body">
              <!--CONTENT STARTS HERE-->

            <div class="questionsB" style="display:none">
              <p>1. Aphantasia is a condition, which describes people, for whom it is hard to visualise mental images.</p>

              <div class="form-check mcq-template" style="display:none">
                  <input runat="server" class="form-check-input answer" type="radio" name="flexRadioDefault"/>
                  <label class="form-check-label" for="flexRadioDefault1">
                      ONE
                  </label>
              </div>


            </div>
              <!--CONTENT ENDS HERE-->

            </div>
          </div>
        </div>


        <div class="accordion-item body-collapse">
          <h2 class="accordion-header section-header" id="flush-headingThree">
            <button class="accordion-button collapsed btn-collapse" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
              SECTION C
            </button>
          </h2>

          <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
            <div class="accordion-body">

              <!--CONTENT STARTS HERE-->

              <div class="questionsC" style="display:none">
                  <p class="question-part1" style="display:inline">1. Aphantasia is a condition, </p>
                  <input style="display:inline" class="answer-area" type="text"/>
                  <p class="question-part2" style="display:inline"> which describes people, for whom it is hard to visualise mental images.</p>
              </div>
              

              <!--CONTENT ENDS HERE-->

            </div>
          </div>
        </div>

      </div> <!--ACCORDION ENDS HERE-->

    </div><!--QUESTION SECTION ENDS HERE-->


    <div class="chk-section">
      <button class="btn btn-primary chk-button" type="button" onclick="chkButton_Click">CHECK ANSWERS</button>
    </div>



    </form>
</body>
</html>
