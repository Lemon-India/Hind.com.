console.log('Hello World!');
let hello = ['gold', 'silver', 'diamond', 'iron', 'coal', 'ruby', 'sodium', 'vibranium', 'silicon', 'copper'];
let finish=document.getElementById('finish');
let score = document.getElementById('score');
let now = 0;
let finish_count;
let finished=0;
let count = 0;
let previous;
let previous1 = 1;
let now1 = 0;
let container = document.getElementById('container');
let rand;
let card = document.getElementsByClassName('card');
let got = [];
let gott = [ ];

let check;

for (let y = 0; y < 20; y++) {
  rand =  Math.random();
  rand=rand*10;
  rand=Math.floor(rand);

  for (let u = 0; u <10; u++) {
    if (rand == got[u]) {
      check = 1;
      break;
    }
    else {
      check = 0;
    }
  }
  if (check == 0) {
    card[y].innerHTML = hello[rand];
    got.push(rand);
   if(got.length!=10 && y==19){
    y=-1;
      got=[];
       for(let o=0;o<card.length;o++)
      {
        card[o].innerHTML='';
      }
    }
  }
  else {
     if(got.length!=10 && y==19){
      y=-1;
      got=[]
      for (let o = 0; o < card.length; o++)
             {
               card[o].innerHTML = '';
             }
    }
 
  }

}

for (let p = 0; p < 20; p++)
{  
  if (card[p].innerHTML == '') 
  {     rand = Math.random();
      rand = rand * 10;
      rand = Math.floor(rand); 

    for (let u = 0; u <10 ; u++) {
      if (rand == gott[u]) {
        check = 1;
        break;
      }
      else {
        check = 0;
      }
    }
    if (check == 0) {
      card[p].innerHTML = hello[rand];
  
     gott.push(rand);
    
    
    }
    else {
      p--;
    }
  
      
    }
  }

console.log(got); 
console.log(gott);
let num=0;
for (let u = 0; u < 20; u++) {
  if (card[u].innerHTML == "undefined") {
   card[u].innerHTML = 'lost';
  }
}


for (let i = 0; i < card.length; i++) {
  card[i].addEventListener('click', function() {
    if (card[i].style.backgroundColor != 'floralwhite') {
      function haha() {
        function value() {
          if (now == 0)
          {
            previous = card[i].innerHTML;
            previous1 = i;
          }
          else
          {
            previous = now;
            previous1 = now1;
          }
          now = card[i].innerHTML;
          now1 = i;
        }
        count++;
        card[i].style.transform = 'rotateY(0deg)';
        card[i].style.color = 'red';
        card[i].style.backgroundColor = 'floralwhite';
        setTimeout(value, 1000);
        console.log('pre ' + previous1);
        console.log('now ' + now1);
        if (count % 2 == 0)
        {
          function godfor() 
          {
            if (now != previous) {
              card[i].style.transform = 'rotateY(180deg)';
              card[i].style.color = 'greenyellow';
              card[i].style.backgroundColor = 'greenyellow';

              card[previous1].style.transform = 'rotateY(180deg)';
              card[previous1].style.color = 'greenyellow';
              card[previous1].style.backgroundColor = 'greenyellow';
            }
          }
          setTimeout(godfor, 1000);
       }
  score.innerHTML = "your have clicked " + count + " times";
      }
     haha();
    }
    
  for (let o = 0; o < card.length; o++)
         {
           if(
  card[o].style.backgroundColor=='floralwhite')
              {
    finish_count++;
             }
             else{
               finish_count=0;
               break;
             }
        }
    
    
   
    if(finish_count==20){
    finish.style.visibility='visible';
  finish.innerHTML='your score is '+count+'.The higher the score the poorer you played.The best score you can get is 10 which is quite impossible to attain';
  console.log('game finished you can now give this thing a like');
    }
  

    
    
  });
}
