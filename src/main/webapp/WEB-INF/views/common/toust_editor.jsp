<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Toast UI Editor with image</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.48.4/codemirror.min.css"/>
    <link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />
 
<style>
 

</style>
</head>
<body>

<div id="editor" class="editor"></div>

<script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
   
    var editor = new toastui.Editor({
       
        el:document.querySelector("#editor"),
        previewStyle : 'tab',
        height: '450px',
        


       
        hooks:{
            "addImageBlobHook" : function(blob,callback){
              
                var fd = new FormData();
                fd.append("im",blob);     

                $.ajax({
                    url:"http://localhost:8089/spring18/toast/upload",
                    type:"post",
                    data:fd,
                    processData:false,            
                    contentType:false,                  
                    success:function(result){
                       console.log(result);
                         
                        callback(result);
                    }
                });
            }
        },

       
    });
    /* ass s */
    var document_content = $('#document_content').val();
    
    editor.setHtml(document_content);
</script>

</body>
</html>