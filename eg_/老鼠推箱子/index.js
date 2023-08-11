
var oDivmouse=document.getElementById('mouse');
//var oDivbackground=document.getElementById("backgroundjpg");


var oDivblock= document.createElement("div");  
oDivblock.style.backgroundColor="#cccccc";
oDivblock.style.width=22;
oDivblock.style.height=22;
oDivblock.style.position="absolute";//"relative";
oDivblock.style.left=100;
oDivblock.style.top=100;

var TopOfPageDistance=100,LeftOfPageDistance=100;//当前位置
oDivmouse.style.left=LeftOfPageDistance;
oDivmouse.style.top=TopOfPageDistance;
//箱子
var oDivbox= oDivblock.cloneNode(true); 
oDivbox.style.backgroundColor="#ffff66";

//背景
var oDivblank= oDivblock.cloneNode(true); 
oDivblank.style.backgroundColor="#99ff99";
oDivblank.style.width=284;
oDivblank.style.height=284;
oDivblank.style.left=LeftOfPageDistance-10;
oDivblank.style.top=TopOfPageDistance-10;
document.body.appendChild(oDivblank);
00
var oDivwhite= oDivblock.cloneNode(true); 
oDivwhite.style.backgroundColor="#ffffff";
oDivwhite.style.width=264;
oDivwhite.style.height=264;
oDivwhite.style.left=LeftOfPageDistance;
oDivwhite.style.top=TopOfPageDistance;
document.body.appendChild(oDivwhite);

var oDivblocks;
var blackarray=   
[[-1,0,0,0,0,0,0,9,0,0,0,0],
 [0,0,0,5,9,0,0,0,0,0,0,0],
 [0,0,0,0,0,0,0,9,0,0,0,0],
 [0,9,0,0,0,0,0,0,9,0,0,0],
 [0,0,0,0,9,0,0,0,0,0,0,0],
 [9,0,0,0,0,9,1,0,0,0,0,0],
 [0,0,0,0,0,0,0,0,9,0,0,0],
 [0,0,9,0,5,0,0,0,0,0,0,9],
 [0,0,0,0,9,0,0,0,0,9,0,0],
 [0,0,1,0,0,0,9,0,0,0,0,0],
 [9,0,0,0,0,0,0,9,0,0,0,0],
 [0,0,0,9,0,0,0,0,0,0,0,0]]


 var TopOfPageDistances=TopOfPageDistance;
 for(var i=0;i<12;i++){
  var LeftOfPageDistances=TopOfPageDistance;
  for(var j=0;j<12;j++){
      if(blackarray[i][j] == 9){//墙
          oDivblocks= oDivblock.cloneNode(true);
          oDivblocks.style.left=LeftOfPageDistances;
          oDivblocks.style.top=TopOfPageDistances;
          document.body.appendChild(oDivblocks);
       }
      else
          if(blackarray[i][j]==1){//洞
            oDivblocks= oDivblock.cloneNode(true);
            oDivblocks.style.backgroundColor="#87CEFA";
            oDivblocks.style.left=LeftOfPageDistances;
            oDivblocks.style.top=TopOfPageDistances;
            document.body.appendChild(oDivblocks);
          }
          else
            if(blackarray[i][j]==5){//箱子
              oDivblocks= oDivbox.cloneNode(true);
              oDivblocks.id=i*10+j;
              oDivblocks.style.zIndex=1;
              oDivblocks.style.left=LeftOfPageDistances;
              oDivblocks.style.top=TopOfPageDistances;
              document.body.appendChild(oDivblocks);
            }
            else//初始化老鼠位置
              if(blackarray[i][j]==-1){
                oDivmouse.style.left=LeftOfPageDistances;
                oDivmouse.style.top=TopOfPageDistances;
                blackarray[i][j]=0;
              }
          
       //设置每个格子大小
       LeftOfPageDistances+=22;
  }
  TopOfPageDistances+=22;
}
function checkwin(){//没坑了就赢了
  for(var i=0;i<12;i++)
   for(var j=0;j<12;j++)
       if(blackarray[i][j] == 1)return 1;
  return 0;
}
//被老鼠推动的箱子
function moveboxright(leftnum,topnum){
   //alert(leftnum)

   var oDivbox;

   if(
     leftnum<11
     &&
     blackarray[topnum][leftnum+1]<2
     &&
     (
      blackarray[topnum][leftnum]==5
      ||
      blackarray[topnum][leftnum]==6
    )
    ){
      oDivbox=document.getElementById(topnum*10+leftnum);
      oDivbox.style.left=oDivbox.offsetLeft+22;
      blackarray[topnum][leftnum]-=5;
      leftnum++;
      blackarray[topnum][leftnum]+=5;
      oDivbox.id=topnum*10+leftnum;
   }
}


function moveboxleft(leftnum,topnum){
  //alert(leftnum)

  var oDivbox;

  if(
    leftnum>0
    &&
    blackarray[topnum][leftnum-1]<2
    &&
    (
      blackarray[topnum][leftnum]==5
      ||
      blackarray[topnum][leftnum]==6
    )
   ){
     oDivbox=document.getElementById(topnum*10+leftnum);
     oDivbox.style.left=oDivbox.offsetLeft-22;
     blackarray[topnum][leftnum]-=5;
     leftnum--;
     blackarray[topnum][leftnum]+=5;
     oDivbox.id=topnum*10+leftnum;
  }
}


function moveboxup(leftnum,topnum){
  //alert(topnum)

  var oDivbox;

  if(
    topnum>0
    &&
    blackarray[topnum-1][leftnum]<2
    &&
    (
      blackarray[topnum][leftnum]==5
      ||
      blackarray[topnum][leftnum]==6
    )
   ){
     oDivbox=document.getElementById(topnum*10+leftnum);
     oDivbox.style.top=oDivbox.offsetTop-22;
     blackarray[topnum][leftnum]-=5;
     topnum--;
     blackarray[topnum][leftnum]+=5;
     oDivbox.id=topnum*10+leftnum;
  }
}


function moveboxdown(leftnum,topnum){
  //alert(topnum)

  var oDivbox;

  if(
    topnum<11
    &&
    blackarray[topnum+1][leftnum]<2
    &&
    (
      blackarray[topnum][leftnum]==5
      ||
      blackarray[topnum][leftnum]==6
    )
   ){
     oDivbox=document.getElementById(topnum*10+leftnum);
     oDivbox.style.top=oDivbox.offsetTop+22;
     blackarray[topnum][leftnum]-=5;
     topnum++;
     blackarray[topnum][leftnum]+=5;
     oDivbox.id=topnum*10+leftnum;
  }
}

//老鼠的移动
function moveright(){
  var leftnum=(oDivmouse.offsetLeft-LeftOfPageDistance)/22;
  var topnum=(oDivmouse.offsetTop-TopOfPageDistance)/22;
  //alert(localnum);
  

  moveboxright(leftnum+1,topnum);


  if(
    leftnum<11
    &&
    blackarray[topnum][leftnum+1]<5
    )
    return true;
  else
    return false;
}


function moveleft(){
  var leftnum=(oDivmouse.offsetLeft-LeftOfPageDistance)/22;
  var topnum=(oDivmouse.offsetTop-TopOfPageDistance)/22;
  //alert(localnum);
  

  moveboxleft(leftnum-1,topnum);


  if(
    leftnum>0
    &&
    blackarray[topnum][leftnum-1]<5
    )
    return true;
  else
    return false;
}


function moveup(){
  var leftnum=(oDivmouse.offsetLeft-LeftOfPageDistance)/22;
  var topnum=(oDivmouse.offsetTop-TopOfPageDistance)/22;
  //alert(localnum);
  

  moveboxup(leftnum,topnum-1);


  if(
    topnum>0
    &&
    blackarray[topnum-1][leftnum]<5
    )
    return true;
  else
    return false;
}


function movedown(){
  var leftnum=(oDivmouse.offsetLeft-LeftOfPageDistance)/22;
  var topnum=(oDivmouse.offsetTop-TopOfPageDistance)/22;
  //alert(localnum);
  

  moveboxdown(leftnum,topnum+1);


  if(
    topnum<11
    &&
    blackarray[topnum+1][leftnum]<5
    )
    return true;
  else
    return false;
}


document.onkeydown=function(ev){
       //alert(ev.keyCode);
   switch(ev.keyCode){
          case 39:
            if(moveright())
            {
              oDivmouse.style.left=oDivmouse.offsetLeft+22;
              oDivmouse.style.WebkitTransform="rotate(270deg)"; 
            }
           
           break;
          case 37:
            if(moveleft())
            {
           oDivmouse.style.left=oDivmouse.offsetLeft-22;
           oDivmouse.style.WebkitTransform="rotate(90deg)"; 
            }
           
           break;
          case 38:
            if(moveup())
            {
           oDivmouse.style.top=oDivmouse.offsetTop-22;
           oDivmouse.style.WebkitTransform="rotate(180deg)"; 
            }
           
           break;
          case 40:
            if(movedown())
            {
           oDivmouse.style.top=oDivmouse.offsetTop+22;
           oDivmouse.style.WebkitTransform="rotate(0deg)"; 
            }
           
           break;
         default:
   }
   if(checkwin()==0){
     alert("you win!");
     window.location.href="second/index.html"
     return;
   }
}





