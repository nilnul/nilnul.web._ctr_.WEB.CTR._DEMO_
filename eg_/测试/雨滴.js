function rains(){
    const box=document.getElementById('rainBox');
        let boxHeight=box.clientHeight;
        let boxWidth=box.clientWidth;
        window.onresize=function(){
            boxHeight=box.clientHeight;
            boxWidth=box.clientWidth;
        };
        setInterval(()=>{
            const rain=document.createElement('div');
            rain.classList.add('rain');
            rain.style.top=0;
            rain.style.left=Math.random()*boxWidth+'px';
            rain.style.opacity=Math.random();
            box.appendChild(rain);
            let race=2;
            const timer=setInterval(()=>{
                if(parseInt(rain.style.top)>boxHeight){
                    clearInterval(timer);
                    box.removeChild(rain);
                }
                race++;
                rain.style.top=parseInt(rain.style.top)+race+'px'
            },20)
        },50);
}
