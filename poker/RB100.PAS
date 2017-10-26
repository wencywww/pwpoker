 uses Graph,crt;

     var
       P,P1,P2,P3,Pd: Pointer;
       Size,del,d_heig,col_w: word;
       g:longint;
       i,i2,i1,x1,x2,x3,y3,Gd, Gm,gmy,gmy2,cod,pb,pbz, pbk,pbk_h,re,sou,sou_1:integer;
       ch:char;
       mk:array[1..10] of string[3];
       mk1,mk2,prob:array[1..5] of string[3];
       k,j1:string[3];
       j:1..6;
       a:array[0..13] of string[2];
       br,br1:0..5;
       w1:array[1..10] of string[7];
       Q:array[1..5] of byte;
       apb,w:array [1..10] of longint;
       kode,pb1,pbw,pbh,g1,win_bum:string;
       so,po,popb:boolean;
       i_1,col,col1,brp:byte;
       markpo:array[1..5] of boolean;





  Procedure   grub;

  Begin
   x3:=10;br1:=0;
   setfillstyle(1,white);
   bar(8,gmy-2,122,gmy2+2);
   setfillstyle(4,11);
   Bar(10,gmy,120,gmy2);
   Size := ImageSize(8,gmy-2,122,gmy2+2);
   GetMem(P, Size);   { Allocate memory on heap }
   GetImage(8,gmy-2,122,gmy2+2, P^);
   { NEW }
   setfillstyle(1,blue);
   bar(8,gmy-2,122,gmy2+2);
   setfillstyle(1,WHITE);
   Bar(10,gmy,120,gmy2);
   Size := ImageSize(8,gmy-2,122,gmy2+2);
   GetMem(P1, Size);   { Allocate memory on heap }
   GetImage(8,gmy-2,122,gmy2+2, P1^);

   setfillstyle(1,white);
   bar(10,10,248,30);
   Size := ImageSize(10,10,248,30);
   GetMem(P2, Size);   { Allocate memory on heap }
   GetImage(10,10,248,30, P2^);

    setfillstyle(1,white);
    bar(10,10,248,30);
    Size := ImageSize(10,10,248,30);
    GetMem(P3, Size);   { Allocate memory on heap }
    GetImage(10,10,248,30, P3^);

      cleardevice;
      setfillstyle(1,2);
      bar(0,0,getmaxx,getmaxy);
 { 3D bar for Menu}
      i:=30; { Otmestw};
           setfillstyle(1,black);
                bar(10,10+i,249,30+i);
                setfillstyle(1,lightblue);
                bar(12,11+i,249,31+i);
                setcolor(white);
                line(250,12+i,250,30+i);
                line(250,31+i,12,31+i);

     Size := ImageSize(10,10+i,250,31+i);
     GetMem(Pd, Size);   { Allocate memory on heap }
     GetImage(10,10+i,250,31+i, Pd^);
        End;



       Procedure Bum(xv,yv,x1v,y1v,br:integer;a:string);

            var old:ViewPortType;
                old_T:TextSettingsType;
                multx,multy,divx,divy:byte;

     Begin
       getviewsettings(old);
       gettextsettings(old_T);
       setviewport(xv,yv,x1v,y1v,clipon);
        clearviewport;
          multx:=1;multy:=1;divx:=8;divy:=8;
          i:=1;
          settextjustify(centertext,centertext);
          settextstyle(1,0,1);
       repeat
          setusercharsize(multx+i,divx,multy+i,divy);
           setcolor(lightmagenta);
           outtextxy(180,70,a);
            delay(10);
           setcolor(black);
           outtextxy(180,70,a);
            inc(i);
      until i>br;
    i:=1;
      repeat
         clearviewport;
         setcolor(lightmagenta);
          outtextxy(180,70,a);
       delay(100);
         setcolor(yellow);
         outtextxy(180,70,a);
       delay(100);
       inc(i);
    until i=3;
     i:=0;
      settextjustify(old_t.horiz,old_t.vert);
        ch:=readkey;
        clearviewport;
      setviewport(old.x1,old.y1,old.x2,old.y2,clipon);
     End;





  Procedure   karta2;
            var v_cor:0..16;

  Begin
    x1:=10;x2:=10;br:=1;
    a[1]:='A';a[2]:='2';a[3]:='3';a[4]:='4';a[5]:='5';a[6]:='6';
    a[7]:='7';a[8]:='8';a[9]:='9';a[10]:='10';a[11]:='J';a[12]:='Q';
    a[13]:='K';a[0]:='jk';

     randomize;
  repeat
     repeat
     po:=false;
       i:=random(14);
         if i=0 then
                    begin
                     v_cor:=random(16);
         if v_cor>5 then repeat
                          i:=random(14)
                         until i<>0
                     end;
      repeat
       j:= random(6)
      until (j=3) or (j=4) or (j=5) or (j=6);

       str(j,j1);
       k:=a[i];
       if i=0 then  kode:='jk'
              else  kode:=k+j1;
       for i1:=1 to 5 do
       if kode=mk[i1] then po:=true
     until po=false;

      mk[br]:=kode;
      mk1[br]:=kode;
   setfillstyle(1,15);
   if (j=3) or (j=4) then begin col:=12;col1:=12 end
                     else begin col:=0; col1:=0 end;
   if k='jk' then begin
                       col:=1;
                       col1:=15;
                 end;
   putimage(10+x1,gmy,P1^,normalput);
   sound(sou-1500);delay(del);nosound;
    setcolor(col);
    settextstyle(0,horizdir,2);
    outtextxy(15+x1,gmy+7,K);
    setcolor(col1);
    outtextxy(25+x1,gmy+30,chr(J));
    setcolor(col);
    outtextxy(93+x2,gmy+145,K);
    setcolor(col1);
      outtextxy(84+x2,gmy+121,chr(J));
   delay(200);
    inc(x1,120);inc(x2,120);inc(br);
   until br=6;
    End;

       Procedure   karta21;


              Begin
                x1:=10;x2:=10;br:=1;
    a[1]:='A';a[2]:='2';a[3]:='3';a[4]:='4';a[5]:='5';a[6]:='6';
    a[7]:='7';a[8]:='8';a[9]:='9';a[10]:='10';a[11]:='J';a[12]:='Q';
    a[13]:='K';a[0]:='jk';

     randomize;
  repeat
     repeat
     po:=false;
       i:=random(14);

      repeat
       j:= random(6)
      until (j=3) or (j=4) or (j=5) or (j=6);

       str(j,j1);
       k:=a[i];
       if i=0 then  kode:='jk'
              else  kode:=k+j1;
       for i1:=1 to 5 do
       if kode=mk[i1] then po:=true
     until po=false;

      mk[br]:=kode;
      mk1[br]:=kode;
   setfillstyle(1,15);
   if (j=3) or (j=4) then begin col:=12;col1:=12 end
                     else begin col:=0; col1:=0 end;
   if k='jk' then begin
                       col:=1;
                       col1:=15;
                 end;
   putimage(10+x1,170,P1^,normalput);
    setcolor(col);
    settextstyle(0,horizdir,2);
    outtextxy(15+x1,170+7,K);
    setcolor(col1);
    outtextxy(25+x1,170+30,chr(J));
    setcolor(col);
    outtextxy(93+x2,170+145,K);
    setcolor(col1);
      outtextxy(84+x2,170+121,chr(J));
   delay(200);
   inc(x1,120);inc(x2,120);inc(br);
   until br=6;

              End;


    Procedure    Mark;

          var ck:char;




     Begin

       settextstyle(0,horizdir,2);
       setcolor(white);
       outtextxy(30,250,'Select cards ');
        settextstyle(1,horizdir,1);

      repeat
      setcolor(white);
        ck:=readkey;
        if ck=#0 then
        ck:=readkey;
       case ck of
        #49: if markpo[1]=false then
                  begin
                   outtextxy(50,gmy2+20,'HOLD');
                   sound(sou-sou_1);delay(del);nosound;
                   dec(sou_1,35);
                   mk2[1]:='*';
                   markpo[1]:=true
                  end
                else
                  begin
                  setcolor(blue);
                   outtextxy(50,gmy2+20,'HOLD');
                   mk2[1]:='+';
                   markpo[1]:=false
                  end;
        #50: if markpo[2]=false then
                begin
                  outtextxy(170,gmy2+20,'HOLD');
                  sound(sou-sou_1);
                  delay(del);nosound;
                  dec(sou_1,35);
                  mk2[2]:='*';
                  markpo[2]:=true
                 end
                 else
                  begin
                  setcolor(blue);
                   outtextxy(170,gmy2+20,'HOLD');
                   mk2[2]:='+';
                   markpo[2]:=false
                  end;
        #51: if markpo[3]=false then
              begin
               outtextxy(290,gmy2+20,'HOLD');
               sound(sou-sou_1);delay(del);nosound;
               dec(sou_1,35);
               mk2[3]:='*';
               markpo[3]:=true
              end
               else
                  begin
                  setcolor(blue);
                   outtextxy(290,gmy2+20,'HOLD');
                   mk2[3]:='+';
                   markpo[3]:=false
                  end;
        #52: if markpo[4]=false then
               begin
                outtextxy(410,gmy2+20,'HOLD');
                sound(sou-sou_1);delay(del);nosound;
                dec(sou_1,35);
                mk2[4]:='*';
                markpo[4]:=true
               end
                else
                  begin
                  setcolor(blue);
                   outtextxy(410,gmy2+20,'HOLD');
                   mk2[4]:='+';
                   markpo[4]:=false
                  end;
        #53: if markpo[5]=false then
              begin
               outtextxy(530,gmy2+20,'HOLD');
               sound(sou-sou_1);delay(del);nosound;
               dec(sou_1,35);
               mk2[5]:='*';
               markpo[5]:=true;
              end
              else
                  begin
                  setcolor(blue);
                   outtextxy(530,gmy2+20,'HOLD');
                   mk2[5]:='+';
                   markpo[5]:=false
                  end;
         'a': begin
                markpo[1]:=true;markpo[2]:=true;markpo[3]:=true;markpo[4]:=true;markpo[5]:=true;
                for i:=1 to 5 do
                mk2[i]:='*';
                i1:=50;
                setcolor(white);
                sou_1:=1550;
                repeat
                outtextxy(i1,gmy2+20,'HOLD');
                sound(sou-sou_1);delay(del+50);nosound;
                 dec(sou_1,35);
                 inc(i1,120);
                until i1=650;
                sou_1:=1550;
              end;
         'n':begin
              markpo[1]:=false;markpo[2]:=false;markpo[3]:=false;markpo[4]:=false;markpo[5]:=false;
                for i:=1 to 5 do
                mk2[i]:='+';
                i1:=50;
                setcolor(blue);
                repeat
                outtextxy(i1,gmy2+20,'HOLD');
                inc(i1,120);
                until i1=650;
              end;
      end;

      until ck=#13;
            if pb<>0 then putimage(8,y3-13,P2^,xorput);
              settextstyle(0,horizdir,2);
              setcolor(blue);
              outtextxy(30,250,'Select cards ');
             for i:=1 to 5 do
                 if mk2[i]='*' then mk1[i]:='*';
             for i:=1 to 5 do
             mk2[i]:='';
        End;

       Procedure   Pass;

         Begin
          br:=0;
          for i1:=1 to 5 do
           if mk1[i1]<>'*'  then  inc(br);
           i1:=1;
         repeat
          if mk1[i1]<>'*' then  begin
              case i1 of
               1: begin x1:=10;x2:=0 end;
               2: begin x1:=130;x2:=130 end;
               3: begin x1:=250;x2:=250 end;
               4: begin x1:=370;x2:=370 end;
               5: begin x1:=490;x2:=490 end
              end;

               randomize;
           repeat
       po:=false;
       i:=random(14);
      repeat
       j:= random(7)
      until (j=3) or (j=4) or (j=5) or (j=6);
       str(j,j1);
       k:=a[i];
       if i=0 then  kode:='jk'
              else  kode:=k+j1;
       for i_1:=1 to 10 do
       if kode=mk[i_1] then po:=true
       until po=false;
       mk1[i1]:=kode;
       mk[5+i1]:=kode;
             setfillstyle(1,15);
             if (j=3) or (j=4) then begin col:=12;col1:=12 end
                               else begin col:=0; col1:=0 end;
             if k='jk' then begin
                              col:=1;
                              col1:=15
                              end;

             putimage(10+x1,gmy,P1^,normalput);
             sound(sou-1500);delay(del);nosound;
             setcolor(col);
             settextstyle(0,horizdir,2);
             outtextxy(15+x1,gmy+7,K);
             setcolor(col1);
             outtextxy(25+x1,gmy+30,chr(J));
             setcolor(col);
             outtextxy(93+x2,gmy+145,K);
             setcolor(col1);
             outtextxy(84+x2,gmy+121,chr(J));
             dec(br)
                            end;
             inc(i1); delay(150);

                  until br=0;
              for i1:=1 to 5 do
               if mk1[i1]='*' then mk1[i1]:=mk[i1];

              end;


      Procedure win;

          var   ak,ab:array[1..5] of string[2];
                k1,bk,bk1,k2,i1,n,e2,e3,e4,bkt,bc,k3,podbl:0..6;
                simvol,simv:string;
                br,bz,ak2:byte;
                ak1:array[1..5] of byte;
                pojk,pock:boolean;
      Begin

      br:=0;k1:=1;bk:=0;simvol:=''; simv:='';i1:=1;bz:=0;
      pojk:=false;e2:=0;e3:=0;e4:=0; pb:=0;

      apb[1]:=1100;apb[2]:=500;apb[3]:=100;apb[4]:=40;apb[5]:=10;apb[6]:=7;apb[7]:=5;apb[8]:=3;apb[9]:=2;
      repeat
      k3:=2;
      Ak[k1]:=copy(mk1[k1],1,1);
      if ak[k1]='1' then k3:=3;
      Ab[k1]:=copy(mk1[k1],k3,1);
      simvol:=simvol + ak[k1];
      if ak[k1]='j' then pojk:=true;
      inc(k1);
      until k1=6;
      pock:=pojk;
     repeat
      repeat
         simv:=copy(simvol,1,5);
         BK:=pos(ak[i1],simv) ;
          if bk<>0 then  begin
                         inc(br);
                         simvol[bk]:='*';
                         end;
                    inc(bz)
      until bk=0;
       inc(i1);
      if br <>1 then  begin
          case br of
           2:inc(e2);
           3:inc(e3);
           4:inc(e4);
           end;        end ;
         br:=0
      until bz=10;
         settextstyle(1,horizdir,6);
         setcolor(white);

 if (pojk=true) and (e4=1) then  begin   pb:=pb+(apb[1]*G);
                                         str(pb,pb1);
                                         e4:=0;
                                 end;
 if (pojk=true) and (e3=1) then  begin   pb:=pb+(apb[4]*G);
                                         str(pb,pb1);
                                         e3:=0
                                 end;
 if (pojk=true) and (e2=2) then  begin   pb:=pb+(apb[5]*G);
                                         str(pb,pb1);
                                         e2:=0
                                 end;
 if (pojk=true) and (e2=1) then  begin pb:=pb+(apb[8]*G);
                                       str(pb,pb1);
                                       e2:=0
                                 end;
 if (e2=1) and (e3=1) then   begin     pb:=pb+(apb[5]*G);
                                       str(pb,pb1);
                                       e2:=0; e3:=0
                             end;
 if e4=1 then begin pb:=pb+(apb[4]*G);str(pb,pb1);end;

 if e3=1 then begin pb:=pb+(apb[8]*G);str(pb,pb1);end;

 if e2=2 then begin pb:=pb+(apb[9]*G);str(pb,pb1); end;

        i:=1;

           repeat
          if ak[i]='1' then ak[i]:='10';
          if ak[i]='j' then ak[i]:='15';
          if ak[i]='J' then ak[i]:='11';
          if ak[i]='Q' then ak[i]:='12';
          if ak[i]='K' then ak[i]:='13';
          if ak[i]='A' then ak[i]:='14';
            inc(i);
           until i=6;
          i:=1;
        repeat
            val(ak[i],ak1[i],cod);
            inc(i);
           until i=6;

       for  i:=1 to 5 do
       for  j:=1 to 5-i do
        if ak1[j]>ak1[j+1] then begin
                         ak2:=ak1[j];
                         ak1[j]:=ak1[j+1];
                         ak1[j+1]:=ak2
                              end;
              i:=0;

          if pojk=true then   begin
          repeat
             inc(i);
             if (ak1[1]+i<>ak1[i+1]) and (pojk=true) then begin
                                          ak1[5]:=ak1[i+1];
                                          ak1[i+1]:=ak1[1]+i;
                                          pojk:=false;
                                        end;
          until i=4;


       for  i:=1 to 5 do
       for  j:=1 to 5-i do
        if ak1[j]>ak1[j+1] then begin
                         ak2:=ak1[j];
                         ak1[j]:=ak1[j+1];
                         ak1[j+1]:=ak2
                              end
                                     end;
        i:=0;bkt:=0;
        repeat
          inc(i);
          if ak1[1]+i=ak1[i+1] then inc(bkt);
        until i=4;
        bc:=0;i:=0;

     {flush}  k2:=1;
              if ab[1]='k' then begin k2:=2; i:=1 end;
             repeat
              inc(i);
              if ab[k2]=ab[i+1] then inc(bc);
            until i=4;

           if (bc=3) and (pock=true) then begin  pb:=pb+(apb[6]*G);
                                                 str(pb,pb1);
                                           end;
           if (bc=3) and (bkt=4) and (pock=true) then
                                         begin
                                          pb:=pb+(apb[3]*G);
                                          str(pb,pb1);
                                          end;

           if (bc=4) and (bkt=4) then if ab[5]='14'  then
                             begin
                                 pb:=pb+(apb[2]*G);
                                 str(pb,pb1);
                                 bc:=0;bkt:=0
                             end                  else
                             begin
                                 pb:=pb+(apb[3]*G);
                                 str(pb,pb1);
                                 bc:=0;bkt:=0
                             end;
           if (bc=4) and (bkt=4) then begin  pb:=pb+(apb[3]*G);str(pb,pb1);end;
           if  bc=4  then begin  pb:=pb+(apb[6]*G);str(pb,pb1);end;
           if  bkt=4 then begin  pb:=pb+(apb[7]*G);str(pb,pb1);end;

           if pb<>0 then begin

                           win_Bum:='WIN - '+ pb1;

                           for i:=1 to 9 do
                           if pb=w[i] then y3:=i*20;

                           putimage(8,y3-13,P3^,xorput);
                           sou_1:=1550;
                            
                            repeat
                               sound(sou-sou_1);delay(del);
                               dec(sou_1,50);
                            until sou_1<=1300;
                             nosound;
                                delay(150);
                            repeat
                              sound(sou-sou_1);delay(del);
                              inc(sou_1,50);
                             until sou_1>=1550;
                              nosound;
                              bum(270,50,getmaxx-10,250,15,win_bum);
                         end;

               pbz:=pb;
                  if ch=#27 then begin  pbk:=pbk+pb; pb:=0; end;
                  if (ch<>#27) and (pb<>0) then
          {DBL}         Begin
           cleardevice;
                   setfillstyle(1,magenta);
                   bar(1,1,getmaxx,getmaxy);
                     str(pbk,pbw);
                     settextstyle(1,0,4);
                     setcolor(yellow);
                      outtextxy(10,10,'CREDITS - ');
                      outtextxy(180,10,pbw);
                       outtextxy(400,10,'WIN -');
                       outtextxy(500,10,pb1);
          x1:=0;
            i:=0;
              repeat
               putimage(10,100+i,P^,normalput);
               inc(i,15);

              until i>180;

                         randomize;
                      settextstyle(1,0,6);
                      setcolor(lightred);
                      outtextxy(260,400,'WIN'); outtextxy(460,400,'LOSE');
                      settextstyle(7,0,6);
                      setcolor(lightred);
                      outtextxy(280,100,'Red/Black');

      repeat
      i1:=1;podbl:=0;
           repeat
       po:=false;
       i:=random(14);
      repeat
       j:= random(15)
      until (j=3) or (j=4) or (j=5) or (j=6);
       str(j,j1);
        k:=a[i];
         if i=0 then  kode:='jk'
                else  kode:=k+j1;
         for i_1:=1 to 10 do
           if kode=mk[i_1] then po:=true
       until po=false;
       mk1[i1]:=kode;
       mk[5+i1]:=kode;
             setfillstyle(1,15);
             if (j=3) or (j=4) then begin col:=12;col1:=12 end
                               else begin col:=0; col1:=0 end;
             if k='jk' then begin
                              col:=1;
                              col1:=15
                            end;
                ch:=readkey;

               if ch=#27 then begin pbk:=pbk+pb; pb:=0;end;
               if ch='d' then   if pb>1 then
                                begin
                                    settextstyle(1,0,4);
                                    setcolor(magenta);
                                    outtextxy(180,10,pbw);

                                   pbk:=pbk+(pb div 2);
                                   settextstyle(1,0,4);
                                   setcolor(magenta);
                                   outtextxy(500,10,pb1);
                                     str(pb div 2,pb1);
                                     setcolor(yellow);
                                     outtextxy(500,10,pb1);

                                   str(pbk,pbw); pb:=pb div 2;
                                   setcolor(magenta);
                                   outtextxy(180,10,pbw);
                                     setcolor(yellow);
                                     outtextxy(10,10,'CREDITS - ');
                                     outtextxy(180,10,pbw);

                               end;

               if (ch='r') or (ch='b')  and (pb<>0) then  begin
                           putimage(250+x1,200,P1^,normalput);
             setcolor(col);
             settextstyle(0,horizdir,2);
             outtextxy(255+x1,204,K);
             setcolor(col1);
             outtextxy(265+x1,231,chr(J));
             setcolor(col);
             outtextxy(330+x1,340,K);
             setcolor(col1);
             outtextxy(320+x1,324,chr(J));
                inc(i1);
              for i1:=1 to 5 do
               if mk1[i1]='*' then mk1[i1]:=mk[i1];
              case ch of
               'r': begin if col=12 then  podbl:=1;
                          if col=1  then  podbl:=3;
                          if col=0  then  podbl:=2;
                    end;
               'b': begin if col=0  then  podbl:=1;
                          if col=12 then  podbl:=3;
                          if col=12 then  podbl:=2;
                    end;
               end;
               if podbl=1 then  begin
                                   setcolor(white);
                                   settextstyle(1,0,6);
                                   outtextxy(260,400,'WIN');
                                   repeat
                                     sound(sou-sou_1);delay(del);
                                     dec(sou_1,50);
                                   until sou_1<=1300;
                                     nosound;
                                   delay(500);
                                   setcolor(lightred);
                                   outtextxy(260,400,'WIN');
                                   setcolor(magenta);
                                   settextstyle(1,0,4);
                                   outtextxy(500,10,pb1);
                                   pb:=pb*2;
                                   str(pb,pb1);
                                   setcolor(yellow);
                                   outtextxy(500,10,pb1);
                                   end;
               if podbl=2  then   begin
                                    setcolor(white);
                                    settextstyle(1,0,6);
                                    outtextxy(460,400,'LOSE');
                                    repeat
                                     sound(sou-sou_1);delay(del);
                                     inc(sou_1,50);
                                    until sou_1>=1550;
                                     nosound;
                                    setcolor(magenta);
                                    settextstyle(1,0,4);
                                    outtextxy(500,10,pb1);
                                    setcolor(yellow);
                                    outtextxy(500,10,'0');
                                    delay(1000);
                                    pb:=0;
                                   end;
               if podbl=3  then  delay(500);

                 inc(x1,30);
                                            end;

            until  (pb=0) or (x1=300);
                if pb=0 then popb:=false;
                str(pbk,pbw);
                if x1=300 then pbk:=pbk+pb;
                pb:=0;
                if ch<>#27 then begin
                   settextstyle(0,horizdir,2);
                   setcolor(white);
                   outtextxy(250,460,'Press a key ');
                ch:=readkey;
                ch:='*';
                                end;
         end;

     End;

        Procedure auto;

         Begin
                setfillstyle(1,magenta);
                bar(1,1,getmaxx,getmaxy);
                  i:=0;x1:=0;setfillstyle(4,11);
             repeat
               putimage(1+i,10+x1,P^,normalput);
               inc(i,25);inc(x1,15);
              until i>=250;
              i:=0;x1:=0;
               repeat
                putimage(550-i,10+x1,P^,normalput);
                inc(i,25);inc(x1,15);
               until i>=250;
                 i2:=0;
                 x3:=10;br1:=0;
                repeat
                  setfillstyle(4,11);
                  putimage(10+x3,gmy,P^,normalput);
                  inc(x3,120); inc(br1);
                until br1=5;
                   settextstyle(0,0,2);
                   setcolor(yellow);
                   outtextxy(240,453,'Wait...');
                   delay(2500);
                   if keypressed then ch:=readkey;
                   if ch=#32 then brp:=10
                             else brp:=9;
        End;

             Procedure help;

            Begin
             cleardevice;
                setfillstyle(1,lightblue);
               bar(1,100,getmaxx,getmaxy);
               setfillstyle(1,lightgray);
               bar(1,60,getmaxx,100);
               setfillstyle(1,red);
               bar(1,getmaxy-39,getmaxx,getmaxy);
               settextstyle(1,0,5);
               setcolor(white);
               outtextxy(getmaxx div 2-82,0,'H E L P ');
               setcolor(white);
               line(1,60,getmaxx,60);
               line(getmaxx,60,getmaxx,getmaxy);
               line(getmaxx,getmaxy,1,getmaxy);
               line(1,getmaxy,1,60);
               line(getmaxx div 2,60,getmaxx div 2,getmaxy-40);
               line(1,100,getmaxx,100);
               setcolor(black);
               settextstyle(1,0,4);
               outtextxy(17,60,'Buttons ');
               outtextxy(352,60,'Functions ');
               settextstyle(1,0,3);
               setcolor(lightred);
               outtextxy(20,100,'1, 2, 3, 4, 5'); outtextxy(350,100,'Select/Unselect cards ');
               outtextxy(20,130,'A'); outtextxy(350,130,'Select all cards');
               outtextxy(20,160,'N'); outtextxy(350,160,'Unselect all cards');
               outtextxy(20,190,'Enter'); outtextxy(350,190,'Pass or Red/Black');
               outtextxy(20,220,'C / X , M / L'); outtextxy(350,220,'Change the bet');
               outtextxy(20,250,'D'); outtextxy(350,250,'Take 1/2 of win in R/B ');
               outtextxy(20,280,'Esc');outtextxy(350,280,'Take all win');
               outtextxy(20,310,'H ');outtextxy(350,310,'Help');
               outtextxy(20,340,'R / B ');outtextxy(350,340,'Red or Black in R/B');
               outtextxy(20,370,'S ');outtextxy(350,370,'Sound On/Off');
               outtextxy(20,400,'Spase bar');outtextxy(350,400,'Quit');
               settextstyle(7,0,3);
               setcolor(white);
               outtextxy(10,getmaxy-36,'Back to game - Space bar');outtextxy(365,getmaxy-36,'Quit - Ecs');
               repeat
               {if brp=10 then ch:=readkey;
               if brp=9 then} ch:=readkey;
             until (ch=#32) or (ch=#27); {or (brp=9);}
             if ch=#27 then begin auto;cleardevice;halt end;
             ch:=#50;
             cleardevice;

          End;

       {      Procedure help;

            Begin
             cleardevice;
                setfillstyle(1,lightblue);
               bar(1,100,getmaxx,getmaxy);
               setfillstyle(1,lightgray);
               bar(1,60,getmaxx,100);
               setfillstyle(1,red);
               bar(1,getmaxy-39,getmaxx,getmaxy);
               settextstyle(1,0,5);
               setcolor(white);
               outtextxy(getmaxx div 2-82,0,'H E L P ');
               setcolor(cyan);
               line(1,60,getmaxx,60);
               line(getmaxx,60,getmaxx,getmaxy);
               line(getmaxx,getmaxy,1,getmaxy);
               line(1,getmaxy,1,60);
               line(getmaxx div 2,60,getmaxx div 2,getmaxy-40);
               line(1,100,getmaxx,100);
               line(1,getmaxy-40,getmaxx,getmaxy-40);
               setcolor(black);
               settextstyle(1,0,4);
               outtextxy(70,60,'Buttons :');
               outtextxy(400,60,'Functions :');
               settextstyle(1,0,3);
               setcolor(blue);
               outtextxy(20,100,'1, 2, 3, 4, 5'); outtextxy(350,100,'Select/Unselect cards ');
               outtextxy(20,130,'A'); outtextxy(350,130,'Select all cards');
               outtextxy(20,160,'N'); outtextxy(350,160,'Unselect all cards');
               outtextxy(20,190,'Enter'); outtextxy(350,190,'Pass or Red/Black');
               outtextxy(20,220,'C / X , M / L'); outtextxy(350,220,'Change the bet');
               outtextxy(20,250,'D'); outtextxy(350,250,'Take 1/2  win  ');
               outtextxy(20,280,'Esc');outtextxy(350,280,'Take all win');
               outtextxy(20,310,'H ');outtextxy(350,310,'Help');
               outtextxy(20,340,'R / B ');outtextxy(350,340,'Red or Black kard');
               outtextxy(20,370,'S ');outtextxy(350,370,'Sound On/Off');
               outtextxy(20,400,'Spase bar');outtextxy(350,400,'Quit');
               settextstyle(7,0,1);
               setcolor(white);
               outtextxy(10,getmaxy-36,'Start game/Back to game -');
               setcolor(lightblue);outtextxy(305,getmaxy-36,'Space bar');
               setcolor(white);outtextxy(450,getmaxy-36,'Quit - ');
               setcolor(lightblue);outtextxy(525,getmaxy-36,'Esc');
               repeat
               {if brp=10 then ch:=readkey;
                if brp=9 then}{ ch:=readkey;
          {   until (ch=#32) or (ch=#27); {or (brp=9);}
            { if ch=#27 then begin auto;cleardevice;halt end;
             ch:=#50;
             cleardevice;

          End;  }


          Procedure  Wword;

            Begin
           { setfillstyle(1,yellow);
            bar(10,3,250,200); }
             setcolor(white);
             settextstyle(2,0,7);
             d_heig:=textheight('K');
             w[1]:=g*10;
             w[1]:=g*1100;
             str(w[1],w1[1]);
             outtextxy(15,5,'5 Of A Kind');
             outtextxy(180,5,w1[1]);
              w[2]:=g*500;
              str(w[2],w1[2]);
              outtextxy(15,25,'Royal Flush');
              outtextxy(180,25,w1[2]);
                 w[3]:=g*100;
              str(w[3],w1[3]);
              outtextxy(15,45,'Street Flush');
              outtextxy(180,45,w1[3]);
                 w[4]:=g*40;
              str(w[4],w1[4]);
              outtextxy(15,65,'Poker');
              outtextxy(180,65,w1[4]);
                w[5]:=g*10;
              str(w[5],w1[5]);
              outtextxy(15,85,'Full House');
              outtextxy(180,85,w1[5]);
                 w[6]:=g*7;
              str(w[6],w1[6]);
              outtextxy(15,105,'Flush');
              outtextxy(180,105,w1[6]);
                w[7]:=g*5;
              str(w[7],w1[7]);
              outtextxy(15,125,'Street');
              outtextxy(180,125,w1[7]);
                 w[8]:=g*3;
              str(w[8],w1[8]);
              outtextxy(15,145,'3 Of A Kind');
              outtextxy(180,145,w1[8]);
                 w[9]:=g*2;
              str(w[9],w1[9]);
              outtextxy(15,165,'2 Pairs');
              outtextxy(180,165,w1[9]);

            End;


          Procedure Autowin;

           var   ak,ab,prob1:array[1..5] of string[2];

                k1,bk,bk1,k2,i1,n,e2,e3,e4,bkt,bc,k3,podbl:0..6;
                simvol,simv:string;
                br,bz,ak2:byte;
                ak1:array[1..5] of byte;
                pojk,pock:boolean;
      Begin

      br:=0;k1:=1;bk:=0;simvol:=''; simv:='';i1:=1;bz:=0;
      pojk:=false;e2:=0;e3:=0;e4:=0;

      apb[1]:=1100;apb[2]:=500;apb[3]:=100;apb[4]:=40;apb[5]:=10;apb[6]:=7;apb[7]:=5;apb[8]:=3;apb[9]:=2;
      markpo[1]:=false;markpo[2]:=false;markpo[3]:=false;markpo[4]:=false;markpo[5]:=false;
      repeat
      k3:=2;
      Ak[k1]:=copy(mk1[k1],1,1);
      if ak[k1]='1' then k3:=3;
      Ab[k1]:=copy(mk1[k1],k3,1);
      simvol:=simvol + ak[k1];
      if ak[k1]='j' then
      begin
       pojk:=true;
       prob1[k1]:='pw';
      end;
      inc(k1);
      until k1=6;
      pock:=pojk;
     repeat
      repeat
         simv:=copy(simvol,1,5);
         BK:=pos(ak[i1],simv) ;
          if bk<>0 then  begin
                         inc(br);
                         simvol[bk]:='*';
                         prob[bk]:='pw';
                         prob[i1]:='pw';
                         end;
                    inc(bz)
      until bk=0;
       inc(i1);
      if (br <>1) and (br<>0) then  begin
          case br of
           2:inc(e2);
           3:inc(e3);
           4:inc(e4);
           end;
              for i:=1 to 5 do  if prob1[i]<>'pw' then
              prob1[i]:=prob[i];
                   end;
              for i:= 1 to 5 do
              prob[i]:='-';

             br:=0
      until bz=10;
         settextstyle(1,horizdir,6);
         setcolor(white);

 if (pojk=true) and (e4=1) then  begin   pb:=pb+(apb[1]*G);
                                         str(pb,pb1);
                                         e4:=0;
                                 end;
 if (pojk=true) and (e3=1) then  begin   pb:=pb+(apb[4]*G);
                                         str(pb,pb1);
                                         e3:=0
                                 end;
 if (pojk=true) and (e2=2) then  begin   pb:=pb+(apb[5]*G);
                                         str(pb,pb1);
                                         e2:=0
                                 end;
 if (pojk=true) and (e2=1) then  begin pb:=pb+(apb[8]*G);
                                       str(pb,pb1);
                                       e2:=0
                                 end;
 if (e2=1) and (e3=1) then   begin     pb:=pb+(apb[5]*G);
                                       str(pb,pb1);
                                       e2:=0; e3:=0
                             end;
 if e4=1 then begin pb:=pb+(apb[4]*G);str(pb,pb1);end;

 if e3=1 then begin pb:=pb+(apb[8]*G);str(pb,pb1);end;

 if e2=2 then begin pb:=pb+(apb[9]*G);str(pb,pb1); end;

        i:=1;

           repeat
          if ak[i]='1' then ak[i]:='10';
          if ak[i]='j' then ak[i]:='15';
          if ak[i]='J' then ak[i]:='11';
          if ak[i]='Q' then ak[i]:='12';
          if ak[i]='K' then ak[i]:='13';
          if ak[i]='A' then ak[i]:='14';
            inc(i);
           until i=6;
          i:=1;
        repeat
            val(ak[i],ak1[i],cod);
            inc(i);
           until i=6;

       for  i:=1 to 5 do
       for  j:=1 to 5-i do
        if ak1[j]>ak1[j+1] then begin
                         ak2:=ak1[j];
                         ak1[j]:=ak1[j+1];
                         ak1[j+1]:=ak2
                              end;
              i:=0;

          if pojk=true then   begin
          repeat
             inc(i);
             if (ak1[1]+i<>ak1[i+1]) and (pojk=true) then begin
                                          ak1[5]:=ak1[i+1];
                                          ak1[i+1]:=ak1[1]+i;
                                          pojk:=false;
                                        end;
          until i=4;


       for  i:=1 to 5 do
       for  j:=1 to 5-i do
        if ak1[j]>ak1[j+1] then begin
                         ak2:=ak1[j];
                         ak1[j]:=ak1[j+1];
                         ak1[j+1]:=ak2
                              end
                                     end;
        i:=0;bkt:=0;
        repeat
          inc(i);
          if ak1[1]+i=ak1[i+1] then inc(bkt);
        until i=4;
        bc:=0;i:=0;

     {flush}  k2:=1;
              if ab[1]='k' then begin k2:=2; i:=1 end;
             repeat
              inc(i);
              if ab[k2]=ab[i+1] then inc(bc);
            until i=4;

           if (bc=3) and (pock=true) then begin  pb:=pb+(apb[6]*G);
                                                 str(pb,pb1);

                            for i:=1 to 5 do  if prob1[i]<>'pw' then
                                  prob1[i]:='pw';

                                           end;
           if (bc=3) and (bkt=4) and (pock=true) then
                                         begin
                                          pb:=pb+(apb[3]*G);
                                          str(pb,pb1);
                                          for i:=1 to 5 do  if prob1[i]<>'pw' then
                                  prob1[i]:='pw';

                                          end;

           if (bc=4) and (bkt=4) then if ab[5]='14'  then
                             begin
                                 pb:=pb+(apb[2]*G);
                                 str(pb,pb1);
                                 bc:=0;bkt:=0;
                                 for i:=1 to 5 do  if prob1[i]<>'pw' then
                                  prob1[i]:='pw';


                             end                  else
                             begin
                                 pb:=pb+(apb[3]*G);
                                 str(pb,pb1);
                                 bc:=0;bkt:=0
                             end;
           if (bc=4) and (bkt=4) then begin  pb:=pb+(apb[3]*G);str(pb,pb1);
           for i:=1 to 5 do  if prob1[i]<>'pw' then
                                  prob1[i]:='pw';
end;
           if  bc=4  then begin  pb:=pb+(apb[6]*G);str(pb,pb1);
                                 for i:=1 to 5 do  if prob1[i]<>'pw' then
                                  prob1[i]:='pw';

           end;
           if  bkt=4 then begin  pb:=pb+(apb[7]*G);str(pb,pb1);
                                 for i:=1 to 5 do  if prob1[i]<>'pw' then
                                  prob1[i]:='pw';

           end;

           if pb<>0 then begin
                           for i:=1 to 9 do
                           if pb=w[i] then y3:=i*20;
                            putimage(8,y3-13,P3^,xorput);
                              sou_1:=1550;
                            repeat
                              sound(sou-sou_1);delay(del);
                              dec(sou_1,50);
                            until sou_1<=1400;

                            repeat
                              sound(sou-sou_1);delay(del);
                              inc(sou_1,50);
                             until sou_1>=1550;
                              nosound;

                            settextstyle(1,horizdir,1);
                            for i:=1 to 5 do
                     if prob1[i]='pw' then   begin
                               delay(80);
                               outtextxy(i*120-70,gmy2+20,'HOLD');
                               sound(sou-sou_1);delay(del+75);
                               nosound;
                               dec(sou_1,35);
                               markpo[i]:=true;
                               mk2[i]:='*'
                               end
                         end;

           end;


      Procedure autor;
       begin
        setfillstyle(1,lightred);
        bar(1,1,getmaxx,getmaxy);
        setfillstyle(1,lightcyan);
        bar(7,7,getmaxx-7,getmaxy-7);

        settextstyle(7,0,10);
        setcolor(lightmagenta);
        outtextxy(90,7,'POKER');
        setcolor(black);
        line(85,150,550,150);
        settextstyle(0,0,2);
        outtextxy(204,346,'Press a key ');
        settextstyle(7,0,3);
        outtextxy(30,435,'Created by Turbo Pascal - Swistow,1994');
       repeat
       setcolor(lightcyan);
       moveto(200,360);
       settextstyle(1,0,7);
       outtext('P & W');
       delay(300);

        setcolor(lightmagenta);
        moveto(200,360);
        settextstyle(7,0,7);
        outtext('P & W');
        delay(500);
        karta21;
      until keypressed;
     if keypressed then  ch:=readkey;
     if ch=#32 then brp:=10
               else brp:=9;
      cleardevice;
      settextstyle(0,0,2);
      setcolor(blue);
      outtextxy(235,220,'Working...');
      delay(1500);
          auto;
          help;
       end;



     Procedure d_Font;

      Begin
           { d_heig }
         setfillstyle(1,green);
         bar(5,5,249,190);
         setcolor(black);
         line(5,5,249,5);
         line(5,5,5,190);
         line(5,190,249,190);
         line(249,190,249,5);
          Putimage(7,7,Pd^,normalput);
          Putimage(7,7+40,Pd^,normalput);
          Putimage(7,7+80,Pd^,normalput);
          Putimage(7,7+120,Pd^,normalput);
          Putimage(7,7+160,Pd^,normalput);
      End;

      Procedure D_Graph(x,y,x1,y1:integer;t:boolean);

             var co,co1:byte;
       Begin

       { x=10,y=10,x1=99,y1=30)

        otm:=30; { Otmestw};
         if t=true then begin
                         I:=1;
                         co1:=white;
                         co:=black
                        end
                   else begin
                         I:=2;
                         co1:=black;
                         co:=white
                        end;

           setfillstyle(1,co1);
                bar(x,y,x1,y1);
                setfillstyle(1,lightblue);
                bar(x+I,y+I,x1,y1+1);
                setcolor(co);
                line(x1+1,y+I,x1+1,y1);
                line(x1+1,y1+1,x+I,y1+1);

      End;









BEGIN

  Gd := Detect;
  InitGraph(Gd, Gm, 'c:\pascal\tp7\bgi');
  if GraphResult <> grOk then
  Halt(1);

  gmy:=getmaxy-200; gmy2:=getmaxy-40;
  grub;
  brp:=0;
  autor;
  ClearDevice;
  pb:=0;G:=1;g1:='1'; pbk:=1000;pbw:='1000';so:=false;
  repeat
   x3:=10;br1:=0;popb:=true;
   cleardevice;
   setfillstyle(1,lightcyan);
   bar(0,0,getmaxx,getmaxy);
   setfillstyle(1,blue);
   bar(1,1,getmaxx-1,getmaxy-1);
    D_FONT;
    wword;
     D_Graph(getmaxx-380,5,getmaxx-300,40,true);
     D_Graph(getmaxx-305,5,getmaxx-260,40,false);
      D_Graph(getmaxx-260,5,getmaxx-100,40,true);
      D_Graph(getmaxx-145,5,getmaxx-10,40,false);

    settextstyle(1,0,3);
    setcolor(lightmagenta);
    outtextxy(getmaxx-250,5,'CREDITS  ');
    outtextxy(getmaxx-370,5,'BET  ');
    outtextxy(345,5,g1);
    outtextxy(500,5,pbw);
   repeat
    setfillstyle(4,11);
    putimage(10+x3,gmy,P^,normalput);
    inc(x3,120); inc(br1);
   until br1=5;

         repeat
                   settextstyle(0,horizdir,2);
                   setcolor(white);
                   outtextxy(30,250,'Press a key ');
                   ch:=#70;
                ch:=readkey;
                     settextstyle(0,horizdir,2);
                     setcolor(blue);
                     outtextxy(30,250,'Press a key ');


           case ch of

       'h': begin
                            help;
                            setfillstyle(1,blue);
                            bar(1,1,getmaxx,getmaxy);
                            settextstyle(1,0,3);
                             D_Graph(getmaxx-380,5,getmaxx-300,40,true);
                             D_Graph(getmaxx-305,5,getmaxx-260,40,false);
                               D_Graph(getmaxx-260,5,getmaxx-100,40,true);
                               D_Graph(getmaxx-145,5,getmaxx-10,40,false);

                            setcolor(lightmagenta);
                            outtextxy(getmaxx-250,5,'CREDITS  ');

                             outtextxy(getmaxx-370,5,'BET  ');
                             outtextxy(345,5,g1);
                             outtextxy(500,5,pbw);
                              d_font;
                              wword;
                              x3:=10;br1:=0;
                               repeat
                                  setfillstyle(4,11);
                                  putimage(10+x3,gmy,P^,normalput);
                                  inc(x3,120); inc(br1);
                                until br1=5;
           end;



        's':  begin  if so=true then  begin
                              sou:=0;
                              del:=0;
                              so:=false;
                              setcolor(white);
                              outtextxy(400,450,'Sound Off');
                              delay(400);
                              setcolor(blue);
                              outtextxy(400,450,'Sound Off');
                             end
                       else  begin
                              sou:=1678;
                              del:=70;
                              so:=true;
                              setcolor(white);
                              outtextxy(400,450,'Sound On');
                              delay(400);
                              setcolor(blue);
                              outtextxy(400,450,'Sound On');
                             end;
           end;
      'm':   begin
              if ((g<pbk) and (g<80)) or (g<pbk)  then  Begin
                 if pbk<=80 then g:=pbk
                            else g:=80;

                     setcolor(lightblue);
                     settextstyle(1,0,3);
                     outtextxy(345,5,g1);
                      str(g,g1);
                       setcolor(lightmagenta);
                       outtextxy(345,5,g1);
                         x1:=5;i:=1;
                          repeat
                           if odd(i) then col_w:=lightblue
                                     else col_w:=green;
                           settextstyle(2,0,7);
                           setcolor(col_w);
                           outtextxy(180,x1,w1[i]);
                           inc(i);inc(x1,20);
                          until i=10;
    apb[1]:=1100;apb[2]:=500;apb[3]:=100;apb[4]:=40;apb[5]:=10;apb[6]:=7;apb[7]:=5;apb[8]:=3;apb[9]:=2;

                     for i:=1 to 9 do
              			         begin
					   w[i]:=apb[i]*g;
					   str(w[i],w1[i])
					  end;
                 i:=1;x1:=5;
                    repeat
                     setcolor(white);
                     outtextxy(180,x1,w1[i]);
                     inc(x1,20);inc(i);
                 until i=10
                  end;
                end;
      'l':  begin
                   if (pbk>1) and (g>1)  then  begin
                     settextstyle(1,0,3);
                     setcolor(lightblue);
                     outtextxy(345,5,g1);
                      g:=1; g1:='1';
                       setcolor(lightmagenta);
                       outtextxy(345,5,g1);
                           x1:=5;i:=1;
                          repeat
                          if odd(i) then col_w:=lightblue
                                     else col_w:=green;

                           settextstyle(2,0,7);
                           setcolor(col_w);
                           outtextxy(180,x1,w1[i]);
                           inc(i);inc(x1,20);
                          until i=10;
       apb[1]:=1100;apb[2]:=500;apb[3]:=100;apb[4]:=40;apb[5]:=10;apb[6]:=7;apb[7]:=5;apb[8]:=3;apb[9]:=2;
                     for i:=1 to 9 do
              			         begin
					   w[i]:=apb[i]*g;
					   str(w[i],w1[i])
					  end;
                 i:=1;x1:=5;
                    repeat
                     setcolor(white);
                     outtextxy(180,x1,w1[i]);
                     inc(x1,20);inc(i);
                 until i=10
                    end;
                  end;

      'c' : begin
                   settextstyle(1,0,3);
                   setcolor(lightblue);
                   outtextxy(345,5,g1);
                     if (g<pbk) and (g<80) then inc(g);
                     str(g,g1);
                 setcolor(lightmagenta);
                 outtextxy(345,5,g1);
                 x1:=5;i:=1;
                 repeat
                 if odd(i) then col_w:=lightblue
                                     else col_w:=green;

                  settextstyle(2,0,7);
                  setcolor(col_w);
                  outtextxy(180,x1,w1[i]);
                  inc(i);inc(x1,20);
                 until i=10;
     apb[1]:=1100;apb[2]:=500;apb[3]:=100;apb[4]:=40;apb[5]:=10;apb[6]:=7;apb[7]:=5;apb[8]:=3;apb[9]:=2;
                 for i:=1 to 9 do
              			  begin
					  w[i]:=apb[i]*g;
					  str(w[i],w1[i])
					  end;
                 i:=1;x1:=5;
                 repeat
                  setcolor(white);
                  outtextxy(180,x1,w1[i]);
                  inc(x1,20);inc(i);
                 until i=10;
                end;
      'x' : if g>1 then
               Begin
                   settextstyle(1,0,3);
                   setcolor(lightblue);
                   outtextxy(345,5,g1);
                       dec(g);
                                   str(g,g1);
                 setcolor(lightmagenta);
                 outtextxy(345,5,g1);
                  x1:=5;i:=1;
                  repeat
                  if odd(i) then col_w:=lightblue
                                     else col_w:=green;

                  settextstyle(2,0,7);
                  setcolor(col_w);
                  outtextxy(180,x1,w1[i]);
                  inc(i);inc(x1,20);
                 until i=10;
     apb[1]:=1100;apb[2]:=500;apb[3]:=100;apb[4]:=40;apb[5]:=10;apb[6]:=7;apb[7]:=5;apb[8]:=3;apb[9]:=2;
                 for i:=1 to 9 do
              			  begin
					  w[i]:=apb[i]*g;
					  str(w[i],w1[i])
					  end;
                 i:=1;x1:=5;
                 repeat
                  setcolor(white);
                  outtextxy(180,x1,w1[i]);
                  inc(x1,20);inc(i);
                 until i=10;
            end
           else  repeat
                  sound(1200);delay(300);nosound;
                  ch:=readkey;
                 until ch<>'x';
       end;
       until (ch=#13) or (ch=#32);
        if ch=#32  then begin
                               cleardevice;
                               CloseGraph;
                               halt;
                        end;
             pbh:=pbw;
              pbk_h:=pbk;
              dec(pbk,g);
                if pbk<g then if pbk<>0 then g:=pbk
                                        else g:=pbk_h;
                settextstyle(1,0,3);
                setcolor(lightmagenta);
                outtextxy(getmaxx-250,5,'CREDITS  ');

                outtextxy(getmaxx-370,5,'BET  ');
                outtextxy(345,5,g1);
                outtextxy(500,5,pbw);

               str(pbk,pbw);
               str(g,g1);
                settextstyle(1,0,3);
                setcolor(lightblue);
                outtextxy(500,5,pbh);
                  setcolor(lightmagenta);
                  outtextxy(500,5,pbw);


    karta2;
    sou_1:=1550;
    autowin;
    mark;
    pass;
    win;
       if (popb=true) and (ch<>#27)  then begin
                    bum(270,50,getmaxx-10,250,30,'LOSE');
         ch:='*';
         popb:=true;
                          end;
                  str(pbk,pbw);
  until  (pbk=0) or (ch=#32);
       CloseGraph;
       clrscr;

 END.

