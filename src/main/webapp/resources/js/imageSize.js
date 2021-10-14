/**
 * 
 */
 
let obj = $('#newFile').val();

function Check() {
	
        // 선택파일의 경로를 분리하여 확장자를 구합니다.
        pathpoint = obj.lastIndexOf('.');
        filepoint = obj.substring(pathpoint+1,obj.length);
        filetype = filepoint.toLowerCase();
 
        // 확장자가 이미지 파일이면 체크를 위해 임시로 로딩합니다.
        if(filetype=='jpg' || filetype=='gif' || filetype=='png' || filetype=='jpeg' || filetype=='bmp')

        {
            F.preview.src = obj; 
        }
        alert(obj);
    }

function fileCheck() {
        // 선택파일의 경로를 분리하여 확장자를 구합니다.
        pathpoint = obj.lastIndexOf('.');
        filepoint = obj.substring(pathpoint+1,obj.length);
        filetype = filepoint.toLowerCase();
 
        // 확장자가 이미지 파일이면 사이즈를 체크합니다.
        if(filetype=='jpg' || filetype=='gif' || filetype=='png' || filetype=='jpeg' || filetype=='bmp')

        {

            var wwd=300;  //제한할이미지가로사이즈
            var hhd=380;  //제한할이미지세로사이즈

            ImageWidth=document.F.preview.width; //이미지의가로사이즈체크 
            ImageHeight=document.F.preview.height; //이미지의세로사이즈체크

            //이미지가로사이즈가지정한사이즈보다클때메세지와함께폼전송을중지합니다.   
           

            if(ImageWidth > wwd)

            {  
                alert('첨부한 이미지의 가로사이즈는'+ImageWidth+'입니다.\n\n이미지의가로사이즈는'+wwd+'이하여야합니다.');
                return false;
            }

           

            //이미지세로사이즈가지정한사이즈보다클때메세지와함께폼전송을중지합니다.
            if(ImageHeight > hhd)

            {  
                alert('첨부한 이미지의 세로사이즈는'+ImageHeight+'입니다.\n\n이미지의세로사이즈는'+hhd+'이하여야합니다.');
                return false;
            }
   
        }

        else

        {
            // 업파일이 이미지확장자가 아닐경우 경고를 줍니다.
            alert('이미지 파일만 업로드 하실수 있습니다.');
            F.preview.src = '';
            return false;
        }
  
        // 이미지 확장자이지만 BMP 확장자라면 일단 경고를 준다.

        if(filetype=='bmp')

        {
            upload = confirm('BMP 파일은 웹상에서 사용하기엔 적절한 이미지 포맷이 아닙니다. \n그래도 계속 하시겠습니까?');
            if(!upload) return false;
        }
        
         alert('파일 체크 끝');
    }

   