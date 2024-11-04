//let skill = localStorage.getItem("skill");
//document.querySelector("#skillTransferer").innerText = skill;

console.log(document.querySelector("#unitTransferer").innerText)


document.querySelector("#levelHeader").innerHTML = localStorage.getItem("header");

const img = document.querySelector("#levelImage");
let imgLink = localStorage.getItem("levelImage");
let imgWidth = localStorage.getItem("levelImageWidth");

img.setAttribute('src', imgLink);

img.style.width = imgWidth;


const h1 = document.querySelector("#levelHeader");
let titlePadding = localStorage.getItem("titlePadding");
h1.style.paddingTop = titlePadding;


let unitTitle = localStorage.getItem("unitTitle");
const taskHeader = document.querySelector("#taskHeader").innerText = unitTitle;



function runDDButton() {

    const ddButton = document.querySelectorAll(".ddButton");

    ddButton.forEach(btn => btn.onclick = function () {

        let dropdown = btn.parentElement;
        let listItems = dropdown.querySelectorAll(".dropdown-item");

        listItems.forEach(item => item.onclick = function () {
            btn.innerText = item.innerText;
        })

    })

}

let transcriptStatus = localStorage.getItem("transcriptSection");
const transcript = document.querySelector(".test");
if (transcriptStatus == 0) {
    transcript.style.display = "none";

} else {
    transcript.style.display = "";
}

let answers = document.querySelectorAll(".answer");

//////////////// GET DATA FOR SECTION A /////////////////

let sectionAQuestions = document.querySelector("#transfererA").innerText;

let splitQuestions = sectionAQuestions.split(",");

let questionTemplate = document.querySelector(".questionsA");
let questionSection = questionTemplate.parentElement;


for (let i = 0; i < splitQuestions.length - 1; i++) {

    let cloneQuestion = questionTemplate.cloneNode(true);
    cloneQuestion.querySelector("p").innerText = splitQuestions[i];

    questionSection.appendChild(cloneQuestion);
    cloneQuestion.style.display = "";

    runDDButton();

}


//////////////// GET DATA FOR SECTION B ///////////////

let sectionBQuestions = document.querySelector("#transfererB").innerText;
let splitQuestionsB = sectionBQuestions.split("/");

let questionBTemplate = document.querySelector(".questionsB");
let questionsBSection = questionBTemplate.parentElement;

let nameChanger = 0;

for (let i = 0; i < splitQuestionsB.length - 1; i++) {

    let questionData = splitQuestionsB[i].split("$");
    let question = questionData[0];
    let answers = questionData[1];
    let splitAnswers = questionData[1].split(",");

    let cloneQuestion = questionBTemplate.cloneNode(true);
    cloneQuestion.querySelector("p").innerText = question;

    let mcqTemplate = cloneQuestion.querySelector(".mcq-template");


    for (let j = 0; j < splitAnswers.length; j++) {

        let cloneMcq = mcqTemplate.cloneNode(true);

        let ans = "";

        if (splitAnswers[j].endsWith("X")) {

            let splitAns = splitAnswers[j].split("X");
            ans = splitAns[0];

        } else {
            ans = splitAnswers[j];

        }


        cloneMcq.querySelector("label").innerText = ans;
        cloneMcq.querySelector("input").setAttribute("name", cloneMcq.querySelector("input").getAttribute("name") + nameChanger);
        cloneMcq.style.display = "";
        cloneQuestion.appendChild(cloneMcq);


    }

    questionsBSection.appendChild(cloneQuestion);
    cloneQuestion.style.display = "";
    nameChanger++;

}

//////////////// GET DATA FOR SECTION C ///////////////
let sectionCQuestions = document.querySelector("#transfererC").innerText;
let splitQuestionsC = sectionCQuestions.split(",");

let questionCTemplate = document.querySelector(".questionsC");
let questionCSection = questionCTemplate.parentElement;

for (let i = 0; i < splitQuestionsC.length - 1; i++) {

    let cloneQuestion = questionCTemplate.cloneNode(true);

    let splitQuestion = splitQuestionsC[i].split("X");
    cloneQuestion.querySelector(".question-part1").innerText = splitQuestion[0];
    cloneQuestion.querySelector(".question-part2").innerText = splitQuestion[1];

    questionCSection.appendChild(cloneQuestion);
    cloneQuestion.style.display = "";


}


//////////////// GET ANSWERS //////////////////
//MAIN CONCEPT
//each answer is combined with its section with a '.' 
//Example: True.A(where True is the answer and A indicates the section)
//each of the above answers are then appended with $ Example: TRUE.A$FALSE.A$TRUE.A$
// as you can see together now we can split the answers by splitting '.A$'
// then we will get TRUE, FALSE, TRUE

let answersA = document.querySelector("#answersA").innerText.split(".TF$"); //.A$
let answersB = document.querySelector("#answersB").innerText.split(".MCQ$"); //.B$
let answersC = document.querySelector("#answersC").innerText.split(".FITB$"); //.C$


//////////////// CHECK ANSWERS /////////////////

let score = 0;

document.querySelector(".chk-button").onclick = function () {

    //////////////// CHECK TF /////////////////

    let questionsA = document.querySelectorAll(".questionsA");

    for (let i = 1; i < questionsA.length; i++) {

        let selectedAns = questionsA[i].querySelector(".ddButton").innerText;

        // answersA[i-1] because for the questions the index starts at 1 and for the question the index starts at 0

        if (selectedAns == answersA[i - 1]) {
            score++;
            console.log("CORRECT");
            questionsA[i].querySelector(".ddButton").style.backgroundColor = "#66ff66";
            questionsA[i].querySelector(".ddButton").style.border = "3px solid #66ff66";
            


        } else {
            console.log("WRONG");
            questionsA[i].querySelector(".ddButton").style.backgroundColor = "#ff5050";
            questionsA[i].querySelector(".ddButton").style.border = "3px solid #ff5050";
        }

    }


    //////////////// CHECK MCQ /////////////////

    let questionsB = document.querySelectorAll(".questionsB");

    for (let i = 1; i < questionsB.length; i++) {

        let question = questionsB[i];

        let answers = question.querySelectorAll(".answer");

        let selectedIndex = -1;



        for (let i = 1; i < answers.length; i++) {

            if (answers[i].checked) {
                selectedIndex = i;
            } else {

            }

        }

        if (selectedIndex == -1) {

            for (let i = 0; i < answers.length; i++) {

                answers[i].parentElement.querySelector("label").style.color = "#ff5050";

            }


        } else {

            let answerOptions = answersB[i - 1].split(",");
            let selectedAnswer = answerOptions[selectedIndex - 1];

            console.log(selectedAnswer);

            if (selectedAnswer.endsWith("X")) {

                score++;
                answers[selectedIndex].parentElement.querySelector("label").style.color = "#66ff66";

                for (let i = 0; i < answers.length; i++) {

                    if (i == selectedIndex) {

                    } else {
                        answers[i].parentElement.querySelector("label").style.color = "black";
                    }

                }


            } else {
                answers[selectedIndex].parentElement.querySelector("label").style.color = "#ff5050";

                for (let i = 0; i < answers.length; i++) {

                    if (i == selectedIndex) {

                    } else {
                        answers[i].parentElement.querySelector("label").style.color = "black";
                    }

                }

            }


        }


    }


    //////////////// CHECK FITB /////////////////
    let questionsC = document.querySelectorAll(".questionsC");

    for (let i = 1; i < questionsC.length; i++) {

        let textbox = questionsC[i].querySelector("input")
        let answer = textbox.value.toLowerCase();
        let correctAnswer = answersC[i - 1].toLowerCase();


        if (answer == correctAnswer) {
            score++;
            textbox.style.backgroundColor = "#99ff99";
            textbox.style.borderColor = "#009933";

        } else {
            textbox.style.backgroundColor = "#ff9999";
            textbox.style.borderColor = "#cc2900";

        }

    }

    document.querySelector("#score").innerText = score;
    //console.log(score);

}


