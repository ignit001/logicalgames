var x_z = 0;
var y_z = 0;
var s_x = 0;
var s_y = 0;
var s_k = 0;
var k = 0;
var flag1 = [0,0,0,0,0];
var flag2 = [0,0,0,0,0];
var flag3 = [0,0,0,0,0];
var flag4 = [0,0,0,0,0];
var flag5 = [0,0,0,0,0];
var fl = 0;
function s(x,y,k_s){//初期
s_x = x;
s_y = y;
x_z = Math.floor( Math.random() * x+1 ) ;
y_z = Math.floor( Math.random() * y+1 ) ;
k = k_s;
s_k = k_s;
tama();
flag1 = [0,0,0,0,0];
flag2 = [0,0,0,0,0];
flag3 = [0,0,0,0,0];
flag4 = [0,0,0,0,0];
flag5 = [0,0,0,0,0];
}
function hantei(c_x,c_y){
        //弾数減らす
        k += -1;
        tama();
        //弾数0以下なら
            if(k < 1){
                //ゲームオーバー
                modal(3);
            }
switch (c_x){
  case 1:
    if(flag1[c_y] == 1){
    fl = 1;
    }
    break;
  case 2:
    if(flag2[c_y] == 1){
    fl = 1;
    }
    break;
  case 3:
    if(flag3[c_y] == 1){
    fl = 1;
    }
    break;
  case 4:
    if(flag4[c_y] == 1){
    fl = 1;
    }
    break;
  case 5:
    if(flag5[c_y] == 1){
    fl = 1;
    }
    break;
}
 if(fl == 1){
    }else{
switch (c_x){
  case 1:
    flag1[c_y] = 1
    break;
  case 2:
    flag2[c_y] = 1
    break;
  case 3:
    flag3[c_y] = 1
    break;
  case 4:
    flag4[c_y] = 1
    break;
  case 5:
    flag5[c_y] = 1
    break;
}
        if(x_z < c_x){
        	if(y_z < c_y){
            	document.getElementById(c_x+"_"+c_y).innerHTML="<img src='../image/hidariue.png'>";
            	}else if(y_z > c_y){
            	document.getElementById(c_x+"_"+c_y).innerHTML="<img src='../image/migiue.png'>";
            	}else if(y_z == c_y){
            	document.getElementById(c_x+"_"+c_y).innerHTML="<img src='../image/ue.png'>";
            	}
        }else if(x_z > c_x){
        	if(y_z < c_y){
            	document.getElementById(c_x+"_"+c_y).innerHTML="<img src='../image/hidarisita.png'>";
        	}else if(y_z > c_y){
            	document.getElementById(c_x+"_"+c_y).innerHTML="<img src='../image/migisita.png'>";
        	}else if(y_z == c_y){
            	document.getElementById(c_x+"_"+c_y).innerHTML="<img src='../image/sita.png'>";
            	}
        }else if(x_z == c_x){
        	if(y_z < c_y){
            	document.getElementById(c_x+"_"+c_y).innerHTML="<img src='../image/hidari.png'>";
        	}else if(y_z > c_y){
            	document.getElementById(c_x+"_"+c_y).innerHTML="<img src='../image/migi.png'>";
        	}else if(y_z == c_y){
            	modal(2);
            	}
        }
        

    }
    fl = 0;
}
function tama(){
    document.getElementById("kaisuu").innerHTML=k;
}
function reset(){
    tama();
flag1 = [0,0,0,0,0];
flag2 = [0,0,0,0,0];
flag3 = [0,0,0,0,0];
flag4 = [0,0,0,0,0];
flag5 = [0,0,0,0,0];
    for(var i=1;i<6;i++){
    	for(var d=1;d<6;d++){
        document.getElementById(i+"_"+d).innerHTML="";
    	}
    }
}
function cleartrue(clearnum){
    window.localStorage.setItem(clearnum,true);
}

function modal(modal_content){
    //モーダルダイアログに表示させる内容
    switch (modal_content){
        case 0:
            document.getElementById("modal-content").innerHTML="<p style='margin-top:300px;'></p>";
            document.getElementById("modal-content").innerHTML+="<div class='center'><input type='button' id='modal-close' class='tojiru'></div>";
            break;
        case 1:
            document.getElementById("modal-content").innerHTML="<p style='margin-top:300px;'></p>";
            document.getElementById("modal-content").innerHTML+="<div class='center'><input type='button' id='modal-close' class='tojiru'></div>";
            break;
        case 2:
            window.localStorage.setItem("senkan_3",true);
            document.getElementById("modal-content").innerHTML="<p style='margin-top:300px;'>おめでとう！ステージクリア！</p>";
            document.getElementById("modal-content").innerHTML+="<div class='center'><input type='button' class='mapback' onclick='mapjump()'></div>";
            break;
        case 3:
            document.getElementById("modal-content").innerHTML="<p style='margin-top:300px;'>ゲームオーバー</p>";
            document.getElementById("modal-content").innerHTML+="<div><input type='button' class='leftbtn mapback'  onclick='mapjump()'><input type='button' class='rightbtn yarinaosi' onclick='s(s_x,s_y,s_k);reset();' id='modal-close'></div>";
    }
    $(function(){
// onclick='s(s_x,s_y,s_k);reset();' 
    //モーダルウィンドウを出現させるクリックイベント
    $(function(){

        //キーボード操作などにより、オーバーレイが多重起動するのを防止する
        $( this ).blur() ;	//ボタンからフォーカスを外す
        if( $( "#modal-overlay" )[0] ) return false ;		//新しくモーダルウィンドウを起動しない (防止策1)
        //if($("#modal-overlay")[0]) $("#modal-overlay").remove() ;		//現在のモーダルウィンドウを削除して新しく起動する (防止策2)

        //オーバーレイを出現させる
        $( "body" ).append( '<div id="modal-overlay"></div>' ) ;
        $( "#modal-overlay" ).fadeIn( "slow" ) ;

        //コンテンツをセンタリングする
        centeringModalSyncer() ;

        //コンテンツをフェードインする
        $( "#modal-content" ).fadeIn( "slow" ) ;

        if(modal_content == 2 || modal_content == 3){
            //クリックしても閉じない
            $( "#modal-close" ).unbind().click( function(){

                //[#modal-content]と[#modal-overlay]をフェードアウトした後に…
                $( "#modal-content,#modal-overlay" ).fadeOut( "slow" , function(){

                    //[#modal-overlay]を削除する
                    $('#modal-overlay').remove() ;
                } ) ;

            } ) ;
        }else{
            //[#modal-overlay]、または[#modal-close]をクリックしたら…
            $( "#modal-overlay,#modal-close" ).unbind().click( function(){

                //[#modal-content]と[#modal-overlay]をフェードアウトした後に…
                $( "#modal-content,#modal-overlay" ).fadeOut( "slow" , function(){

                    //[#modal-overlay]を削除する
                    $('#modal-overlay').remove() ;
                } ) ;

            } ) ;
        }

    } ) ;
    

    //リサイズされたら、センタリングをする関数[centeringModalSyncer()]を実行する
    $( window ).resize( centeringModalSyncer ) ;

        //センタリングを実行する関数
        function centeringModalSyncer() {

            //画面(ウィンドウ)の幅、高さを取得
            var w = $( window ).width() ;
            var h = $( window ).height() ;

            // コンテンツ(#modal-content)の幅、高さを取得
            // jQueryのバージョンによっては、引数[{margin:true}]を指定した時、不具合を起こします。
    //		var cw = $( "#modal-content" ).outerWidth( {margin:true} );
    //		var ch = $( "#modal-content" ).outerHeight( {margin:true} );
            var cw = $( "#modal-content" ).outerWidth();
            var ch = $( "#modal-content" ).outerHeight();

            //センタリングを実行する
            $( "#modal-content" ).css( {"left": ((w - cw)/2) + "px","top": ((h - ch)/2) + "px"} ) ;

        }

    } ) ;
}
function mapjump(){
    window.location.href = 'map.html';
}
