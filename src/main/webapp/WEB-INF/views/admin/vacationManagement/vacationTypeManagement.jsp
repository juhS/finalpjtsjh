<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
<style>
#app-main-container .router-view-wrapper{
margin-top:40px;
margin-right:10px;
margin-left:260px;
margin-bottom:30px;
padding-right: 20px;
padding-left: 20px;
overflow-y: auto;
overflow-x: auto;
background-color:white;


}
div {
display: block;

}
.container-style{
position: fixed;
width: 100%;
height: 100%;
z-index: -1;
background-position: center top;
background-repeat: no-repeat;
background-size: cover;
background-color: #f5f5f5;

}
.contents-wrapper{
height: calc(100% - 40px);
background-color: transparent;
box-shadow: none;
max-width: none;
margin: auto;
margin-top: 20px;
margin-bottom: 20px;
}
.blocker{
position: relative;
height: 100%;
}
.remote-contents{
height: 100%;
}
.column-layout{
margin-bottom: 0;
margin-right: auto;
margin-left: auto;
margin-top: 0;
height: 100%;
display: flex;
}
.column-left .column-layout{
margin-right: 20px !important;
margin: 0;
padding: 0 !important;
-webkit-box-flex: 0;
flex: none;
height: 100%;
display: block;
}
.vacation-category{
display: flex;
-webkit-box-orient: vertical;
-webkit-box-direction: normal;
flex-direction: column;
height: 100%;
background-color:;
box-shadow:0 2px 3px rgba(10,10,10,0.1), 0 0 0 1px rgba(10,10,10,0.1);
color: black;
max-width: 100%;
position: relative;
}
.header-text{
height: 56px;
padding: 20px;
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
-webkit-box-flex: 0;
flex: 0 0 auto;
box-shadow: 0 1px 2px rgba(10,10,10,0.1);
margin: 0 !important;
}
.header-text{
-webkit-box-flex: 0;
flex: 0 0 auto;
margin-right: 5px;
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
overflow: hidden;
font-size: 1.14286rem;
font-weight: bold;
}
p{
margin-block-start: 1em;
margin-block-end: 1em;
margin-inline-start: 0px;
margin-inline-end: 0px;
}
.flex-row{
margin-bottom: 0px;
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
}
span{
font-style: inherit;
font-weight: inherit;
}
.flex-column-right{
-webkit-box-pack: end;
justify-content: flex-end;
margin-right: 0px;
display: flex;
-webkit-box-align: center;
align-items: center;
overflow: hidden;
-webkit-box-flex: 1;
flex: 1 1 auto;
}
.button-is-outlined-is-primary{
background-color: transparent;
border-color: yellow;
color: yellow;
border-width: 1px;
cursor: pointer;
-webkit-box-pack: center;
justify-content: center;
padding-bottom: calc(0.375em - 1px);
padding-left: .75em;
padding-right: .75em;
padding-top: calc(0.375em - 1px);
text-align: center;
white-space: nowrap;
-webkit-box-align: center;
align-items: center;
border: 1px solid transparent;
border-radius: 3px;
box-shadow: none;
display: inline-flex;
font-size: 1rem;
height: 2.25em;
line-height: 1.5;
position: relative;
vertical-align: top;
user-select: none;
text-decoration: none;
}
.icon-is-small{
margin-left: calc(-0.375em - 1px);
margin-right: calc(-0.375em - 1px);
height: 1.5em;
width: 1.5em;
-webkit-box-align: center;
align-items: center;
display: inline-flex;
-webkit-box-pack: center;
justify-content: center;
}
.fa fa-plus{
font-size: 14px;
display: inline-block;
font: normal normal normal 14px/1 FontAwesome;
text-rendering: auto;
-webkit-font-smoothing: antialiased;
content: "\f067";
}
.card-content{
overflow: hidden;
padding: 20px 30px;
-webkit-box-flex: 1;
flex: 1 1 auto;
display: flex;
-webkit-box-orient: vertical;
-webkit-box-direction: normal;
flex-direction: column;
background-color: none;
padding: 1.5rem;
}
.pretty-scroll{
position: relative;
touch-action: auto;
overflow: hidden !important;
}
.pretty-scroll-wrapper{

}
.cool-list{
padding: 1px;
}
ul{
list-style: none;
margin: 0;
display: block;
margin-block-start: 1em;
margin-block-end: 1em;
margin-inline-start: 0px;
margin-inline-end: 0px;
padding-inline-start: 40px;
}
.list-item{
margin: 0;
padding: 0;
display: list-item;
text-align: -webkit-match-parent;
}
.list-selected{
box-shadow: 0 0 0 1px #009AF0;
border: 1px solid #009AF0;
height: 34px;
display: flex;
-webkit-box-align: center;
align-items: center;
margin-bottom: 5px;
background-color: #f8faff;
border-radius: 3px;
font-size: 1.14286rem;
}
.item-handle{
cursor: move;
height: 100%;
font-size: 1.14286rem;
color: #585453;
background-color: #ebedf2;
border-radius: 3px;
border-bottom-right-radius: 0px;
border-top-right-radius: 0px;
border-right: 1px solid #dae2ea;
line-height: 32px;
-webkit-box-flex: 0;
flex: 0 0 30px;
-webkit-box-align: center;
align-items: center;
display: inline-flex;
-webkit-box-pack: center;
justify-content: center;
width: 1.5rem;
}
.fa-bars{
font-size: 1.14286rem;
display: inline-block;
font: normal normal normal 14px/1 FontAwesome;
text-rendering: auto;
-webkit-font-smoothing: antialiased;
}
.item-text{
color: black;
margin: 0px 8px;
user-select: none;
cursor: default;
-webkit-box-flex: 1;
flex: 1 1 auto;
font-size: 1rem;
max-width: 100%;
overflow: hidden;
white-space: nowrap;
text-overflow: ellipsis;
vertical-align: middle;
display: flex;
-webkit-box-align: center;
align-items: center;
}
.item-toolbar{
display: none;
-webkit-box-flex: 0;
flex: 0 0 auto;
}
.edit-item{
color: black;
margin-right: 8px;
cursor: pointer;
text-decoration: none;
}
.icon{
font-size: 1.14286rem;
-webkit-box-align: center;
align-items: center;
display: inline-flex;
-webkit-box-pack: center;
justify-content: center;
height: 1.5rem;
width: 1.5rem;
}
.fa-pencil{
font-size: 1.14286rem;
display: inline-block;
font: normal normal normal 14px/1 FontAwesome;
text-rendering: auto;
-webkit-font-smoothing: antialiased;
}
.remove-item{
color: #3bc1c5;
margin-right: 8px;
cursor: pointer;
text-decoration: none;
}
.fa-trash{
font-size: 1.14286rem;
display: inline-block;
font: normal normal normal 14px/1 FontAwesome;
text-rendering: auto;
-webkit-font-smoothing: antialiased;
}
object{
opacity: 0;
}
.scrollbar-x-rail{
display: none;
position: absolute;
opacity: 0;
transition: background-color .2s linear, opacity .2s linear;
height: 7px;
}
.scrollbar-x{
position: absolute;
background-color: #aaa;
border-radius: 6px;
transition: background-color .2s linear, height .2s linear, width .2s ease-in-out, border-radius .2s ease-in-out;
bottom: 2px;
height: 7px;
}
.scrollbar-y-rail{
display: none;
position: absolute;
opacity: 0;
transition: background-color .2s linear, opacity .2s linear;
width: 11px;
margin-top: 2px;
margin-bottom: 2px;
}
.scrollbar-y{
position: absolute;
background-color: #aaa;
border-radius: 6px;
transition: background-color .2s linear, height .2s linear, width .2s ease-in-out, border-radius .2s ease-in-out;
right: 2px;
width: 7px;
}
.card-footer{
-webkit-box-flex: 0;
flex: 0 0 auto;
width: 100%;
border-top: 1px solid #dbdbdb;
-webkit-box-align: stretch;
align-items: stretch;
display: flex;
-webkit-box-orient: vertical;
-webkit-box-direction: normal;
flex-direction: column;
}
.category-footer{
padding: 15px 20px;
margin-bottom: 0px;
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
}
.cool-checkbox{
position: relative;
display: inline-block;
width: 22px;
height: 22px;
transform: translateZ(0);
}
.checkbox-inner{
/* 보류중!!
position: absolute;
top: 0;
left: 0;
right: 0;
bottom: 0;
background-color: #FFFFFF;
border-width: 1px;
border-style: solid;
border: 1px solid #2196F3;
border-radius: 5px;
z-index: 0;
*/
}
.check{
/* 보류중!!
padding: 2px;
position: absolute;
width: 1px;
border: solid #fff;
border-width: 0 3px 3px 0;
transform: rotate(45deg);
box-sizing: border-box;
top: 2px;
height: 12px;
left: 7px;
*/
}
/*휴가종류스타일*/


/*사용휴가종류스타일*/
.column-right{
margin: 0;
padding: 0 !important;
height: 100%;
display: block;
-webkit-box-flex: 1;
}
.remote-contents-vacation-detail{
height: 100%;
}
.full-height{
height: 100%;
}
.card-section-vacation-kind{
border: 1px solid #dbdbdb;
background: ;
margin-bottom: 20px;
display: flex;
-webkit-box-orient: vertical;
-webkit-box-direction: normal;
flex-direction: column;
box-shadow: 0 1px 2px rgba(10,10,10,0.1);
margin: 0 !important;

}
.card-header{
height: 56px;
padding: 10px 30px;
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
font-size: 1.14286rem;
font-weight: bold;
}
.card-section-item{
border-bottom: 0;
padding: 20px 30px;
}
.subheader-block{
margin-bottom: 20px;
display: block;
}
.sub-header-text{
font-size: 1rem;
font-weight: bold;
margin-bottom: 10px;
}
.flex-row-bottom-twice{
margin-bottom: 10px;
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
}
.field-has-addons{
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
width: 100%;
}
.control-expanded{
-webkit-box-flex: 1;
flex-grow: 1;
margin-right: -1px;
font-size: 1rem;
position: relative;
text-align: left;
}
.button-is-primary{
border-bottom-right-radius: 0;
border-top-right-radius: 0;
background-color: transparent;
border-color: #009AF0;
color: #009AF0;
width: 100%;
border-width: 1px;
cursor: pointer;
-webkit-box-pack: center;
justify-content: center;
padding-bottom: calc(0.375em - 1px);
padding-left: .75em;
padding-right: .75em;
padding-top: calc(0.375em - 1px);
text-align: center;
white-space: nowrap;
-webkit-box-align: center;
align-items: center;
border: 1px solid transparent;
border-radius: 3px;
box-shadow: none;
display: inline-flex;
font-size: 1rem;
height: 2.25em;
line-height: 1.5;
position: relative;
vertical-align: top;
user-select: none;
text-decoration: none;
}
.control{
font-size: 1rem;
position: relative;
text-align: left;
margin: 0;
padding: 0;
}
.icon-is-small{
margin-left: calc(-0.375em - 1px);
margin-right: calc(-0.375em - 1px);
height: 1.5em;
width: 1.5em;
-webkit-box-align: center;
align-items: center;
display: inline-flex;
-webkit-box-pack: center;
justify-content: center;
}
.fa-plus{
font-size: 14px;
display: inline-block;
font: normal normal normal 14px/1 FontAwesome;
text-rendering: auto;
-webkit-font-smoothing: antialiased;
}
.flex-row{
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
margin-bottom: 5px;
}
.flex-column{
margin-right: 0px;
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
overflow: hidden;
-webkit-box-flex: 1;
flex: 1 1 auto;
}
.full-width{
width: 100%;
}
.cool-list{
padding: 1px;
list-style: none;
margin: 0;
display: block;
margin-block-start: 1em;
margin-block-end: 1em;
margin-inline-start: 0px;
margin-inline-end: 0px;
padding-inline-start: 40px;
}
.list-item{
margin: 0;
padding: 0;
display: list-item;
text-align: -webkit-match-parent;
}
.cool-item{
height: 34px;
display: flex;
-webkit-box-align: center;
align-items: center;
margin-bottom: 5px;
background-color:;
border: 1px solid #dae2ea;
border-radius: 3px;
font-size: 1.14286rem;
}
.icon-item-handle{
cursor: move;
height: 100%;
font-size: 1.14286rem;
color: #585453;
background-color: #ebedf2;
border-radius: 3px;
border-bottom-right-radius: 0px;
border-top-right-radius: 0px;
border-right: 1px solid #dae2ea;
line-height: 32px;
-webkit-box-flex: 0;
flex: 0 0 30px;
-webkit-box-align: center;
align-items: center;
display: inline-flex;
-webkit-box-pack: center;
justify-content: center;
width: 1.5rem;
}
.fa-bars{
font-size: 1.14286rem;
display: inline-block;
font: normal normal normal 14px/1 FontAwesome;
text-rendering: auto;
-webkit-font-smoothing: antialiased;
}
.item-text{
margin: 0px 8px;
color: #585453;
user-select: none;
cursor: default;
-webkit-box-flex: 1;
flex: 1 1 auto;
font-size: 1rem;
max-width: 100%;
overflow: hidden;
white-space: nowrap;
text-overflow: ellipsis;
vertical-align: middle;
display: flex;
-webkit-box-align: center;
align-items: center;
}
.reverse{
color: #585453;
cursor: pointer;
text-decoration: none;
}
.flex-row{
margin-bottom: 0px;
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
}
.flex-column-fixed{
-webkit-box-flex: 0;
flex: 0 0 auto;
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
overflow: hidden;
margin-right: 10px;
}
.checkbox{
position: relative;
display: inline-block;
width: 22px;
height: 22px;
transform: translateZ(0);
}
.checked{
/*	보류
position: absolute;
top: 0px;
left: 0px;
right: 0px;
bottom: 0px;
margin: 0px;
padding: 0px;
cursor: pointer;
opacity: 0;
z-index: 1;
width: 22px;
height: 22px;
vertical-align: baseline;
background-color: initial;
appearance: checkbox;
-webkit-writing-mode: horizontal-tb !important;
    text-rendering: auto;
    color: -internal-light-dark(black, white);
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    -webkit-rtl-ordering: logical;
    font: 400 13.3333px Arial;
    */
}
.checkbox-inner{
/* 보류
background-color: #009AF0;
border-color: #009AF0;
position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    border-width: 1px;
    border-style: solid;
    border: 1px solid #2196F3;
    border-radius: 5px;
    z-index: 0;
    */
}
.check{
/*	보류
padding: 2px;
    position: absolute;
    width: 1px;
    border: solid #fff;
    border-width: 0 3px 3px 0;
    transform: rotate(45deg);
    box-sizing: border-box;
    top: 2px;
    height: 12px;
    left: 7px;
*/
}
.flex-column{
margin-right: 0px;
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
overflow: hidden;
-webkit-box-flex: 1;
flex: 1 1 auto;
}
/*사용휴가종류스타일*/


/*휴가일수부여정책스타일*/
.card-section-vacation-policy{
border: 1px solid #dbdbdb;
background:;
margin-bottom: 20px;
display: flex;
-webkit-box-orient: vertical;
-webkit-box-direction: normal;
flex-direction: column;
}
.card-header{
height: 56px;
padding: 10px 30px;
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
font-size: 1.14286rem;
font-weight: bold;
box-shadow: 0 1px 2px rgba(10,10,10,0.1);
margin: 0 !important;
}
.card-section-item{
border-bottom: 0;
padding: 20px 30px;
}
.subheader-block{
margin-bottom: 20px;
display: block;
}
.sub-header-text{
font-size: 1rem;
font-weight: bold;
margin-bottom: 10px;
}
.full-width-full-height{
width: 100%;
height: 100%;
}
.datagrid-column{
box-sizing: border-box;
-webkit-box-flex: 1;
flex: 1 1 auto;
display: flex;
-webkit-box-orient: vertical;
-webkit-box-direction: normal;
flex-direction: column;
height: 100%;
-webkit-locale: "ko";
}
.datagrid-toolbar{
height: 56px;
padding: 20px;
margin-bottom: 0px;
border-bottom: 1px solid #dbdbdb;
justify-content: space-between;
align-items: center;
z-index: 10;
position: relative;
width: 100%;
display: inline-flex;
box-sizing: border-box;
}
.toolbar-left{
display: flex;
align-items: center;
box-sizing: border-box;
}
.toolbar-right{
display: flex;
align-items: center;
box-sizing: border-box;
}
.button-is-outlined-primary{
margin-right: 10px;
background-color: transparent;
border-color: #009AF0;
color: #009AF0;
box-sizing: border-box;
border-width: 1px;
cursor: pointer;
-webkit-box-pack: center;
justify-content: center;
padding-bottom: calc(0.375em - 1px);
padding-left: .75em;
padding-right: .75em;
padding-top: calc(0.375em - 1px);
text-align: center;
white-space: nowrap;
-webkit-box-align: center;
align-items: center;
border: 1px solid transparent;
border-radius: 3px;
box-shadow: none;
display: inline-flex;
font-size: 1rem;
height: 2.25em;
line-height: 1.5;
vertical-align: top;
user-select: none;
text-decoration: none;
}
.icon-is-small{
margin-left: calc(-0.375em - 1px);
margin-right: calc(-0.375em - 1px);
height: 1.5em;
width: 1.5em;
box-sizing: border-box;
-webkit-box-align: center;
align-items: center;
display: inline-flex;
-webkit-box-pack: center;
justify-content: center;
font-style: inherit;
font-weight: inherit;
}
.fa-plus{
font-size: 14px;
box-sizing: border-box;
display: inline-block;
font: normal normal normal 14px/1 FontAwesome;
text-rendering: auto;
-webkit-font-smoothing: antialiased;
}
.fa-trash{
font-size: 14px;
box-sizing: border-box;
text-rendering: auto;
-webkit-font-smoothing: antialiased;
}
.grid-wrapper{
border-color: #dbdbdb;
overflow: hidden;
display: flex;
flex-direction: column;
position: relative;
border: 1px solid #CCC;
box-sizing: border-box;
}
.grid-header-table{
border-bottom: 1px solid #dbdbdb;
background-color: #fafafa;
flex: 0 0 auto;
overflow: auto;
box-sizing: border-box;
}
.grid-table{
width: 100%;
margin-bottom: 0px;
table-layout: fixed;
border-collapse: collapse;
border-spacing: 0;
box-sizing: border-box;
border-color: grey;
}
.datagrid-header-th{
border-left: 0px;
background-color: #fafafa;
border-color: #dbdbdb;
border-top: none;
border-bottom: none;
text-align: center;
min-width: 100px;
position: relative;
background-clip: padding-box;
padding: 0.5em 0.75em;
font-size: 14px;
border: 1px solid #CCC;
vertical-align: middle;
overflow: hidden;
box-sizing: border-box;
color: #404040;
display: table-cell;
font-weight: bold;
}
.datagrid-header{
display: flex;
width: 100%;
align-items: center;
justify-content: center;
overflow: hidden;
padding: 0px 0.25em;
cursor: default;
box-sizing: border-box;
}
.column-title{
max-width: 100%;
overflow: hidden;
white-space: nowrap;
text-overflow: ellipsis;
vertical-align: middle;
display: inline-block;
box-sizing: border-box;
font-style: inherit;
font-weight: inherit;
}
.datagrid-header-checkbox{
vertical-align: middle;
width: 100%;
align-items: center;
justify-content: center;
overflow: hidden;
cursor: default;
box-sizing: border-box;
line-height: 1.25;
position: relative;
}
.checkbox{
width: 22px;
height: 22px;
position: relative;
display: inline-block;
transform: translateZ(0);
box-sizing: border-box;
}
.resizer{
top: 0px;
right: 0px;
bottom: 0px;
width: 5px;
position: absolute;
cursor: col-resize;
box-sizing: border-box;
}
.grid-body-table{
flex: 1 1 auto;
overflow-y: scroll;
overflow-x: auto;
min-height: 80px;
box-sizing: border-box;
}
.grid-table{
margin-bottom: 0px;
table-layout: fixed;
border-collapse: collapse;
border-spacing: 0;
width: 100%;
box-sizing: border-box;
}
.placeholders{
width: 100%;
height: 100%;
box-sizing: border-box;
}
.grid-rows-table{
width: 100%;
height: 100%;
box-sizing: border-box;
display: table-row-group;
vertical-align: middle;
border-color: inherit;
}
.group-header-row{
background: #fafafa;
font-weight: bold;
box-sizing: border-box;
vertical-align: inherit;
border-color: inherit;
}
.group-header-cell{
box-sizing: border-box;
display: block;
}
.fold-group{
height: 1rem;
width: 1rem;
margin-right: 10px;
align-items: center;
display: inline-flex;
justify-content: center;
box-sizing: border-box;
font-style: inherit;
font-weight: inherit;   
}


/* 박스안에 컬럼스타일*/
.group-row-datagrid-row{
box-sizing: border-box;
}
.datagrid-cell-wrapper{
background-color:;
border-left-width: 0px;
border-color: #dbdbdb;
min-width: 100px;
border-width: 0 1px 1px;
padding: 0.5em 0.75em;
font-size: 14px;
border: 1px solid #CCC;
vertical-align: middle;
overflow: hidden;
text-align: left;
box-sizing: border-box;
display: table-cell;
}
.datagrid-handle-cell{
overflow: hidden;
width: 100%;
box-sizing: border-box;
display: flex;
-webkit-box-pack: center;
justify-content: center;
}
.reverse2{
color: #585453;
box-sizing: border-box;
cursor: move;
text-decoration: none;
}
.icon-is-small{
height: 1rem;
width: 1rem;
box-sizing: border-box;

-webkit-box-align: center;
align-items: center;
display: inline-flex;
-webkit-box-pack: center;
justify-content: center;
}
.datagrid-cell-checkbox{
vertical-align: middle;
overflow: hidden;
box-sizing: border-box;
cursor: pointer;
line-height: 1.25;
position: relative;
}
.datagrid-cell-custom-title{
overflow: hidden;
width: 100%;
box-sizing: border-box;
}
.reverse3{
color: #585453;
box-sizing: border-box;
cursor: pointer;
text-decoration: none;
}
.datagrid-cell-custom-standardType{
overflow: hidden;
width: 100%;
box-sizing: border-box;
}
.datagrid-cell-custom-standardCount{
overflow: hidden;
width: 100%;
box-sizing: border-box;
}
.datagrid-cell-custom-vacationCount{
overflow: hidden;
width: 100%;
box-sizing: border-box;
}
.datagrid-cell-custom-useLeft{
overflow: hidden;
width: 100%;
box-sizing: border-box;
}
.flex-display-row-centered{
-webkit-box-align: center;
align-items: center;
box-sizing: border-box;
display: flex;
-webkit-box-orient: horizontal;
-webkit-box-direction: normal;
flex-direction: row;
}
.policy_grid{
box-sizing: border-box;
font-style: inherit;
font-weight: inherit;
}
.datagrid-cell-custom-useExceed{
overflow: hidden;
width: 100%;
box-sizing: border-box;
}
.datagrid-cell-action{
overflow: hidden;
width: 100%;
box-sizing: border-box;
}
.grid-link-edit-row-button{
cursor: pointer;
box-sizing: border-box;
color: #009AF0;
text-decoration: none;
}
/* 박스안에 컬럼스타일 끝*/
/*휴가일수부여정책스타일 끝*/
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/menubar.jsp"></jsp:include>
	
	
    <div id="app-main-container">
    	<div class="container-style"></div>	
		<div class="router-view-wrapper" style="height:850px;">
			<div class="contents-wrapper">
				<div class="blocker" style="overflow:visible;">
					<div class="remote-contents">
						<div class="column-layout">
						
						<!-- 휴가 종류 카테코리 -->
							<div class="column-left" style="width:320px;">
								<div class="vacation-category">
									<header class="card-header">
										<p class="header-text">
											<div class="flex-row">
												<span>휴가종류</span>											
											</div>
										</p>
										<div class="flex-column-right">
											<a class="button-is-outlined-is-primary">
												<span class="icon-is-small">
													<i class="fa fa-plus">
														
													</i>
												</span>
											</a>
										</div>
									</header>
									<div class="card-content">
										<div class="pretty-scroll" style="max-width: calc(100% + 15px); max-height: 100%; width: calc(100% + 15px);">
											<div class="pretty-scroll-wrapper" style="position:relative;">
												<div class="inner-wrapper" style="padding-right:15px;">
													<div>
														<ul class="cool-list">
															<li class="list-item">
																<div class="item-selected">
																	<div class="item-handle">
																		<i aria-hiddem="true" class="fa-bars">
																			
																		</i>
																	</div>
																	<div class="item-text">연차 유급 휴가</div>
																	<div class="item-toolbar">
																		<a class="edit-item">
																			<span class="icon">
																				<i class="fa-pencil"></i>
																			</span>
																		</a>
																		<a class="remove-item" style="display:none;">
																			<span class="icon">
																				<i class="fa-trash"></i>
																			</span>
																		</a>
																	</div>
																</div>
															</li>
															<li class="list-item">
																<div class="item-selected">
																	<div class="item-handle">
																		<i aria-hiddem="true" class="fa-bars"></i>
																	</div>
																	<div class="item-text">경조 휴가</div>
																	<div class="item-toolbar">
																		<a class="edit-item">
																			<span class="icon">
																				<i class="fa-pencil"></i>
																			</span>
																		</a>
																		<a class="remove-item" style="display:none;">
																			<span class="icon">
																				<i class="fa-trash"></i>
																			</span>
																		</a>
																	</div>
																</div>
															</li>
															<li class="list-item">
																<div class="item-selected">
																	<div class="item-handle">
																		<i aria-hiddem="true" class="fa-bars"></i>
																	</div>
																	<div class="item-text">보상 휴가</div>
																	<div class="item-toolbar">
																		<a class="edit-item">
																			<span class="icon">
																				<i class="fa-pencil"></i>
																			</span>
																		</a>
																		<a class="remove-item" style="display:none;">
																			<span class="icon">
																				<i class="fa-trash"></i>
																			</span>
																		</a>
																	</div>
																</div>
															</li>
															<li class="list-item">
																<div class="item-selected">
																	<div class="item-handle">
																		<i aria-hiddem="true" class="fa-bars"></i>
																	</div>
																	<div class="item-text">보건 휴가</div>
																	<div class="item-toolbar">
																		<a class="edit-item">
																			<span class="icon">
																				<i class="fa-pencil"></i>
																			</span>
																		</a>
																		<a class="remove-item" style="display:none;">
																			<span class="icon">
																				<i class="fa-trash"></i>
																			</span>
																		</a>
																	</div>
																</div>
															</li>
															<li class="list-item">
																<div class="item-selected">
																	<div class="item-handle">
																		<i aria-hiddem="true" class="fa-bars"></i>
																	</div>
																	<div class="item-text">병가</div>
																	<div class="item-toolbar">
																		<a class="edit-item">
																			<span class="icon">
																				<i class="fa-pencil"></i>
																			</span>
																		</a>
																		<a class="remove-item" style="display:none;">
																			<span class="icon">
																				<i class="fa-trash"></i>
																			</span>
																		</a>
																	</div>
																</div>
															</li>
															<li class="list-item">
																<div class="item-selected">
																	<div class="item-handle">
																		<i aria-hiddem="true" class="fa-bars"></i>
																	</div>
																	<div class="item-text">공가</div>
																	<div class="item-toolbar">
																		<a class="edit-item">
																			<span class="icon">
																				<i class="fa-pencil"></i>
																			</span>
																		</a>
																		<a class="remove-item" style="display:none;">
																			<span class="icon">
																				<i class="fa-trash"></i>
																			</span>
																		</a>
																	</div>
																</div>
															</li>
														</ul>
														<div>
														<!--  -->
														</div>
														
													</div>
												</div>
												<object style="display: block; position: absolute; top: 0; left:0; height: 100%; width: 100%; overflow: hidden; pointer-events: none; z-index: -1;"
												type="text/html" data="about:blank">
													#document
														<html>
															<head></head>
															<body></body>
														</html>
												</object>
											</div>
											<div class="scrollbar-x-rail" style="left: 0px; bottom:0px;">
												<div class="scrollbar-x" tabindex="0" style="left:0px; width:0px;"></div>
											</div>
											<div class="scrollbar-y-rail" style="top:0px; right: 0px;">
												<div class="scrollbar-y" tabindex="0" style="top:0px; height:0px;"></div>
											</div>
										
										</div>
									</div>
									
									<div class="card-footer">
										<div class="app=form-error">
											<!--  -->
										</div>
										<div class="category-footer">
											<div class="cool-checkbox">
												<input type="checkbox" class>
												<div class="checkbox-inner">
													<span class="check"></span>
												</div>
											</div>
											<span style="margin-left: 5px;">사용하는 휴가 종류만 보기</span>
										</div>
									</div>
									
								</div>
							</div>
							<!-- 휴가 종류 카테코리 끝 -->
							
							
							
							<!-- 사용휴가종류 시작 -->
							<div class="column-right" style="width: calc((100% - 320px) - 20px); flex: 1 1 auto;">
								<div class="remote-contents-vacation-detail">
									<!--  -->
									<!--  -->
									<div class="full-height" style="overflow:auto; padding-right:10px;">
										<div class="card-section-vacation-kind">
											<div class="card-header">
												<span>사용 휴가 종류</span>
											</div>
											<div class="card-body">
												<div class="card-section-item">
													<section class="subheader-block">
														<div class="sub-header-text">사용 휴가 종류 설정</div>
														<p>
															<div>
																"휴가 종류에 따라 사용할 사용 휴가 종류를 추가 및 수정하실 수 있습니다."
																<br>
																"수정 시 사용 휴가 종류를 선택하시면 상세 설정 팝업에서 기본휴가일수,최대휴가일수,최소휴가일수 등을 설정하실 수 있습니다."
															</div>
														</p>
													</section>
													<div class="flex-row-bottom-twice">
														<div class="field-has-addons">
															<p class="control-expanded">
																<a class="button-is-primary" href="/admin/vacationManagement/modal_useVacationType_add.jsp" data-modal="modal-vacation1" target="_blank">
																	추가
																</a>
															</p>
															<p class="control">
																<a class="button-is-primary">
																	<span class="icon-is-small">
																		<i class="fa-plus">
																			
																		</i>
																	</span>
																</a>
															</p>
														</div>
													</div>
													<div class="flex-row">
														<div class="flex-column">
															<div class="full-width">
																<ul class="cool-list">
																	<li class="list-item">
																		<div class="cool-item">
																			<div class="icon-item-handle">
																				<i aria-hidden="true" class="fa-bars">
																					
																				</i>
																			</div>
																			<div class="item-text">
																				<a class="reverse">오전 반차 휴가</a>
																			</div>
																			<!--  -->
																		</div>
																	</li>
																	<li class="list-item">
																		<div class="cool-item">
																			<div class="icon-item-handle">
																				<i aria-hidden="true" class="fa-bars">
																					
																				</i>
																			</div>
																			<div class="item-text">
																				<a class="reverse">오후 반차 휴가</a>
																			</div>
																			<!--  -->
																		</div>
																	</li>
																	<li class="list-item">
																		<div class="cool-item">
																			<div class="icon-item-handle">
																				<i aria-hidden="true" class="fa-bars">
																					
																				</i>
																			</div>
																			<div class="item-text">
																				<a class="reverse">연차 휴가</a>
																			</div>
																			<!--  -->
																		</div>
																	</li>																	
																</ul>
																<div>
																	<!--  -->																
																</div>
															</div>
														</div>
													</div>
													<div class="flex-row">
														<div class="flex-column-fixed">
															<div class="checkbox">
																<input type="checkbox" class="checked">
																<div class="checkbox-inner">
																	<span class="check"></span>
																</div>
															</div>
														</div>
														<span class="flex-column">사용하는 사용 휴가 종류만 보기</span>
													</div>
												</div>
											</div>
											<!--  -->
											<!--  -->
										</div>
										<!-- 사용휴가종류 끝 -->
										
										
										
										<!-- 휴가일수 부여 정책 시작 -->
										<div class="card-section-vacation-policy">
											<div class="card-header">
												<span>휴가일수 부여 정책</span>
											</div>
											<div class="card-body">
												<div class="card-section-item">
													<section class="subheader-block">
														<div class="sub-header-text">휴가일수 부여 정책 설정</div>
														<p>
															<span>
																"정책에 따라 휴가일수를 자동으로 부여를 할 수 있습니다."
																<br>															
															</span>
														</p>
													</section>
													<div class="full-width-full-height">
														<div class="datagrid-column" toolbarcomponent="[object Object]" presetcomponent="[object Object]"
														pagenationcomponent="[object Object]" lang="ko" height="420px" rows="[object Object],[object Object],
														[object Object],[object Object],[object Object],[object Object],[object Object],[object Object],[object Object],
														[object Object]" selected="selected" rowordering="true" no-paging="true">
															<div class="datagrid-toolbar">
																<div class="toolbar-left"></div>
																<div class="toolbar-right">
																	<a class="button-is-outlined-primary">
																		<span class="icon-is-small">
																			<i class="fa-plus">
																				
																			</i>
																		</span>
																	</a>
																	<a class="button-is-outlined-primary">
																		<span class="icon-is-small">
																			<i class="fa-trash">
																				
																			</i>
																		</span>
																	</a>
																	<!--  -->
																	<!--  -->
																</div>
															</div>
															<!--  -->
															<div class="grid-wrapper" style="width:100%; height: 420px;">
																<div class="grid-header-table" style="margin-left:0px; padding-right: 10px;">
																	<table class="grid-table">
																		<colgroup>
																			<col width="43px">
																			<col width="43px">
																			<col width="512">
																			<col width="200">
																			<col width="162">
																			<col width="192">
																			<col width="352">
																			<col width="352">
																			<col width="80px">
																		</colgroup>
																		<thead>
																			<tr data-row-index="1">
																				<th data-column-name="preset-row-handle" rowspan="2" class="datagrid-header-th">
																					<div class="datagrid-header">
																						<span class="column-title"></span>
																					</div>
																					<!--  -->
																				</th>
																				<th data-column-name="preset-checkbox" rowspan="2" class="datagrid-header-th">
																					<div class="datagrid-header-checkbox" style="padding:0px; display:flex;">
																						<div class="checkbox" style="width:22px; height:22px;">
																							<input type="checkbox" class style="width:22px; height:22px;">
																							<div class="checkbox-inner" style="border-color: rgb(33, 150, 243);">
																								<span class="check" style="height:12px; left: 7px;"></span>
																							</div>
																						</div>
																					</div>
																					<!--  -->
																				</th>
																				<th data-column-name="title" rowspan="2" class="datagrid-header-th">
																					<div class="datagrid-header">
																						<span class="column-title" title="휴가 부여 정책 제목">휴가 부여 정책 제목</span>
																					</div>
																					<div class="resizer">
																									&nbsp;
																								</div>
																				</th>
																				<th data-column-name="standardType" rowspan="2" class="datagrid-header-th">
																					<div class="datagrid-header">
																						<span class="column-title" title="부여 기준">부여 기준</span>
																					</div>
																					<div class="resizer">
																									&nbsp;
																								</div>
																				</th>
																				<th data-column-name="standardCount" rowspan="2" class="datagrid-header-th">
																					<div class="datagrid-header">
																						<span class="column-title" title="부여 시점">부여 시점</span>
																					</div>
																					<div class="resizer">
																									&nbsp;
																								</div>
																				</th>
																				<th data-column-name="vacationCount" rowspan="2" class="datagrid-header-th">
																					<div class="datagrid-header">
																						<span class="column-title" title="부여 일수">부여 일수</span>
																					</div>
																					<div class="resizer">
																									&nbsp;
																								</div>
																				</th>
																				<th data-column-name="useLeft" rowspan="2" class="datagrid-header-th">
																					<div class="datagrid-header">
																						<span class="column-title" title="잔여 일수 차감">잔여 일수 차감</span>
																					</div>
																					<div class="resizer">
																									&nbsp;
																								</div>
																				</th>
																				<th data-column-name="useExceed" rowspan="2" class="datagrid-header-th">
																					<div class="datagrid-header">
																						<span class="column-title" title="초과 일수 정산">초과 일수 정산</span>
																					</div>
																					<div class="resizer">
																									&nbsp;
																								</div>
																				</th>
																				<th data-column-name="preset-action" rowspan="2" class="datagrid-header-th">
																					<div class="datagrid-header">
																						<span class="column-title"></span>
																					</div>
																					<!--  -->
																				</th>
																			</tr>
																			<tr data-row-index="2">
																				<!--  -->
																				<!--  -->
																				<!--  -->
																				<!--  -->
																				<!--  -->
																				<!--  -->
																				<!--  -->
																				<!--  -->
																				<!--  -->
																			</tr>
																		</thead>
																	</table>
																</div>
																<div class="grid-body-table">
																	<table class="grid-table">
																		<colgroup>
																			<col width="43px">
																			<col width="43px">
																			<col width="512">
																			<col width="200">
																			<col width="162">
																			<col width="192">
																			<col width="352">
																			<col width="352">
																			<col width="80px">
																		</colgroup>
																		<tbody class="placeholders">
																			<!--  -->
																		</tbody>
																		<tbody class="grid-rows-table" style="">
																			<tr class="group-header-row" style="display: none;">
																				<td colspan="9">
																					<div class="group-header-cell">
																						<span class="fold-group">
																							<i aria-hidden="true" class="fa fa-caret-down"></i>
																						</span>
																						<span>undefined</span>
																					</div>
																				</td>
																			</tr>
																			<tr class="group-row-datagrid-row" data-row-key="1">
																				<td class="datagrid-cell-wrapper">
																					<div class="datagrid-handle-cell">
																						<a class="reverse2">
																							<span class="icon-is-small">
																								<i class="fa-bars">
																								
																								</i>
																							</span>
																						</a>
																					</div>
																				</td>
																				<td class="datagrid-cell-wrappeer">
																					<div class="datagrid-cell-checkbox" style="text-align: center; width: 100%; display: flex; ">
																						<div class="checkbox" style="width:22px; height:22px;">
																							<input type="checkbox" class="" style="width:22px; height:22px;">
																							<div class="checkbox-inner" style="border-color: rgb(33, 150, 243);">
																								<span class="check"	style="height:12px; left:7px;"></span>
																							</div>
																						</div>
																					</div>
																				</td>
																				<td class="datagrid-cell-wrapper">
																					<div class="datagrid-cell-custom-title"	style="text-align: left;">
																						<a class="reverse3">
																											2 개월 차 연차유급휴가 1일 부여 정책
																										</a>
																					</div>
																				</td>
																				<td class="datagrid-cell-wrapper">
																					<div class="datagrid-cell-custom-standardType"	style="text-align: left;">
																						<span>입사일</span>
																					</div>
																				</td>
																				<td class="datagrid-cell-wrapper">
																					<div class="datagrid-cell-custom-standardCount" style="text-align: left;">
																						"
																									2
																									"
																						<span>개월</span>
																					</div>
																				</td>
																				<td class="datagrid-cell-wrapper">
																					<div class="datagrid-cell-custom-vacationCount" style="text-align: left;">
																						"
																									1
																									"
																						<span>일</span>
																						"
																									0
																									"
																						<span>시간</span>
																					</div>
																				</td>
																				<td class="datagrid-cell-wrapper">
																					<div class="datagrid-cell-custom-useLeft" style="text-align: left;">
																						<div class="flex-display-row-centered">
																							<div class="cool-checkbox" style="margin-right:8px;">
																								<input type="checkbox" disabled="disabled" class="">
																								<div class="checkbox-inner">
																									<span class="check"></span>
																								</div>
																							</div>
																							<!--  -->
																							<!--  -->
																							<!--  -->
																							<span style="font-weight:bold;">연차휴가</span>
																							<!--  -->
																							<!--  -->
																							<!--  -->
																							<!--  -->
																							<span class="policy_grid">
																												로 차감
																											</span>
																						</div>
																					</div>
																				</td>
																				<td class="datagrid-cell-wrapper">
																					<div class="datagrid-cell-custom-useExceed"	style="text-align:left;">
																						<div class="flex-display-row-centered">
																							<div class="cool-checkbox" style="margin-right:8px;" disabled="disabled">
																								<input type="checkbox" class disabled="disabled">
																								<div class="checkbox-inner">
																									<span class="check"></span>
																								</div>
																							</div>
																							<!--  -->
																							<!--  -->
																							<!--  -->
																							<span style="font-weight:bold;">연차 휴가</span>
																							<!--  -->
																							<!--  -->
																							<!--  -->
																							<!--  -->
																							<span class="policy_grid">
																												로 정산
																											</span>
																						</div>
																					</div>
																				</td>
																				<td class="datagrid-cell-wrapper">
																					<div class="datagrid-cell-action" style="text-align:center;">
																						<a class="grid-link-edit-row-button">
																							<i class="fa-pencil">
																								
																							</i>
																						</a>
																					</div>
																				</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
															<!--  -->
															<!--  -->
														</div>
													</div>
													
												</div>
											</div>
										</div>
										<!-- 휴가일수 부여 정책 끝 -->
									</div>
								</div>
							</div>
							
						</div>						
					</div>
				
				
				</div>
			</div>
		</div>
	</div>
	
	<div id="modal_vacation" class="modal" style="display:none;">
	
	
		<!-- Modal content -->
		<div class="modal-content-vacation-type">
			<span class="close">&times;</span>
			<jsp:include page="modal_useVacationType_add.jsp"></jsp:include>
		</div>
	
	
	
	</div>
	
	
	
	
	
	
	
<script>

	$(".button-is-primary").click(function(e){
		e.preventDefault();
		var modal = $(this).data("card-modal-active");
		var page = $(this).attr("href");
		localStorage.setltem('card-modal-active', card-modal-active);
		window.location.href = page;
	});
	if("card-modal-active" in localStorage){
		var modal = localStorage.getltem('card-modal-active');
		$("#" + modal).fadeln();
	}



</script>

	
</body>
</html>







