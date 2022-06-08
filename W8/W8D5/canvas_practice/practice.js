document.addEventListener("DOMContentLoaded", function(){
    const theCanvas = document.getElementById("mycanvas");
    theCanvas.width = 500;
    theCanvas.height = 500;

    const ctx = theCanvas.getContext("2d");
    ctx.fillStyle = "red";
    ctx.fillRect(0, 0, 500, 500);

    ctx.beginPath();
    ctx.arc(250, 250, 90, 0, 2 * Math.PI, true);
    ctx.strokeStyle = "black";
    ctx.lineWidth = 5;
    ctx.stroke()
    ctx.fillStyle = "blue";
    ctx.fill();

    ctx.beginPath();
    ctx.moveTo(200, 90);
    ctx.lineTo(200, 300);
    ctx.lineTo(100, 200);
    ctx.fillStyle = "black";
    ctx.fill();
});
