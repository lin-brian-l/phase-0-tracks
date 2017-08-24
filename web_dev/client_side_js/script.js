// Create alert message to test if document is linked
alert("Hello!");

// Change border and background of table of contents
var top_table = document.getElementsByTagName("header");
top_table[0].style.border = "1px solid green";
top_table[0].style.background = "cyan";

// Change font for table of contents and footer; "article" is not affected because font is specified in CSS
var change_font = document.getElementsByTagName("body");
change_font[0].style.fontFamily = "Calibri";

// Add border to all images
var img_border = document.getElementsByTagName("img");
for (var i = 0; i < img_border.length; i++) {
  img_border[i].style.border = "solid thin"
};

// Change background color of paragraphs on click
var para_color = document.getElementsByTagName("p");

function changeBackground(event) {
  event.target.style.background = "blue";
};

for (j = 0; j < para_color.length; j++) {
  para_color[j].addEventListener("click", changeBackground);
};