document.querySelector("#levelHeader").innerText = localStorage.getItem("header");


const img = document.querySelector("#levelImage");
let imgLink = localStorage.getItem("levelImage");
let imgWidth = localStorage.getItem("levelImageWidth");

img.setAttribute('src', imgLink);

img.style.width = imgWidth;



const h1 = document.querySelector("#levelHeader");

let titlePadding = localStorage.getItem("titlePadding");
h1.style.paddingTop = titlePadding;



/////////////// UNIT LOADER ////////////////////


let units = document.querySelector("#transferer").innerText;

let splitUnits = units.split("."); //[hello, world, clown]

let section = document.querySelector(".tasks");

let unitStructure = section.querySelector(".enter-unit");


//     REMEMBER TO TRY TO USE TEMPLATES !!!

for (let i = 0; i < splitUnits.length - 1; i++) {

    let unitData = splitUnits[i].split(",");
    let unitName = unitData[0];
    let questionCount = unitData[1];

    let cloneUnit = unitStructure.cloneNode(true);

    cloneUnit.querySelector("h3").innerText = unitName;
    cloneUnit.querySelector("h6").innerText = questionCount;
    cloneUnit.style.display = "";

    section.appendChild(cloneUnit);

}

const enterUnit = document.querySelectorAll(".enter-unit");

let skillData = document.querySelector("#taskHeader").innerText.split(" ");

let skill = skillData[0];

let level = document.querySelector("#levelHeader").innerText;


enterUnit.forEach(unit => unit.onclick = function () {

    let unitTitle = unit.querySelector("h3").innerText;

    localStorage.setItem("unitTitle", unitTitle);
    localStorage.setItem("skill", skill);
    localStorage.setItem("level", level);


    let dataString = unitTitle + "," + skill + "," + level;

    console.log(dataString);
    unit.setAttribute("href", "unitPage.aspx?button=" + dataString);



})
