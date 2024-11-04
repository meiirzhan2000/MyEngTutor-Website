/*IMAGE SIZE - 250, 250, 200, 300*/

/* PADDING TOP - 120, 90, 110, 65*/


let resultStatus = localStorage.getItem("resultStatus");

if (resultStatus == null) {

    document.querySelector(".exam-results").style.display = "none";


} else if (resultStatus == 1) {

    let results = localStorage.getItem("results");
    let acheivedLevel = localStorage.getItem("acheivedLevel");

    document.querySelector(".exam-level").innerText = "Level Acheived : " + acheivedLevel;
    document.querySelector(".exam-results").style.display = "";
}


document.querySelector("#btnFoundation").onclick = function () {

    const title = "FOUNDATION";
    const titlePadding = "120px";
    const image = "Images/foundation-removebg.png";
    const imageWidth = "250px";

    const taskType = 0;

    localStorage.setItem("header", title);


    localStorage.setItem("titlePadding", titlePadding);
    localStorage.setItem("levelImage", image);
    localStorage.setItem("levelImageWidth", imageWidth);
    localStorage.setItem("transcriptSection", taskType);


}

document.querySelector("#btnPIntermediate").onclick = function () {

    const title = "PRE-INTERMEDIATE";
    const titlePadding = "90px";
    const image = "Images/preIntermediateBGRemoved.png";
    const imageWidth = "250px";

    const taskType = 0;

    localStorage.setItem("header", title);
    localStorage.setItem("titlePadding", titlePadding);
    localStorage.setItem("levelImage", image);
    localStorage.setItem("levelImageWidth", imageWidth);
    localStorage.setItem("transcriptSection", taskType);

}

document.querySelector("#btnIntermediate").onclick = function () {

    const title = "INTERMEDIATE";
    const titlePadding = "110px";
    const image = "Images/intermediate-removebg-preview.png";
    const imageWidth = "200px";

    const taskType = 1;

    localStorage.setItem("header", title);
    localStorage.setItem("titlePadding", titlePadding);
    localStorage.setItem("levelImage", image);
    localStorage.setItem("levelImageWidth", imageWidth);
    localStorage.setItem("transcriptSection", taskType);


}

document.querySelector("#btnAdvanced").onclick = function () {

    const title = "ADVANCED";
    const titlePadding = "65px";
    const image = "Images/advanced-removebg-preview.png";
    const imageWidth = "300px";

    const taskType = 1;

    localStorage.setItem("header", title);
    localStorage.setItem("titlePadding", titlePadding);
    localStorage.setItem("levelImage", image);
    localStorage.setItem("levelImageWidth", imageWidth);
    localStorage.setItem("transcriptSection", taskType);


}


const listItems = document.querySelectorAll(".dropdown-item");
const ddButton = document.querySelector(".ddButton");

listItems.forEach(item => item.onclick = function () {
    ddButton.innerText = item.innerText;

})
