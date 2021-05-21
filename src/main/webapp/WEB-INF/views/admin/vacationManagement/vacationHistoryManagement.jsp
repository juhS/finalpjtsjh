<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/*휴가내역관리 스타일*/
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
#app-main-container{
margin-left: 0px;
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
.router-view-wrapper{
margin-top: 40px;
padding-right: 20px;
padding-left: 20px;
overflow-y: auto;
overflow-x: hidden;
}
.app-page-contents-wrapper{
height: calc(100% - 40px);
background-color: transparent;
box-shadow: none;
max-width: none;
margin: auto;
margin-top: 20px;
margin-bottom: 20px;
}
.app-premium-blocker{
position: relative;
height: 100%;
}
.app-remote-contents{
height: 100%;
}


/*휴가내역관리 왼쪽*/
.app-two-column-layout-gapless{
margin-bottom: 0;
margin-right: auto;
margin-left: auto;
display: flex;
margin-top: 0;
height: 100%;
}
.column-left{
margin-right: 20px !important;
margin: 0;
padding: 0 !important;
-webkit-box-flex: 0;
flex: none;
height: 100%;
}
.card-column-history-department{
display: flex;
-webkit-box-orient: vertical;
-webkit-box-direction: normal;
flex-direction: column;
height: 100%;
background-color: #fff;
box-shadow: 0 2px 3px rgba(10,10,10,0.1), 0 0 0 1px rgba(10,10,10,0.1);
color: #4a4a4a;
max-width: 100%;
position: relative;
}
.card-header{
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
.flex-column-header-text{
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
    margin: 0;
    padding: 0;
}
.flex-row-narrow{
margin-bottom: 0px;
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
}
.flex-column{
margin-right: 5px;
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
    overflow: hidden;
    -webkit-box-flex: 1;
    flex: 1 1 auto;
}
.icon-is-small{
height: 1rem;
    width: 1rem;
-webkit-box-align: center;
    align-items: center;
display: inline-flex;
    -webkit-box-pack: center;
    justify-content: center;
}
.fa fa-users{
font-size: 14px;
display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
text-rendering: auto;
    -webkit-font-smoothing: antialiased;
}
.card-content-flex-props-column{
overflow: hidden;
    padding: 20px 30px;
-webkit-box-flex: 1;
    flex: 1 1 auto;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column;
}
.remote-contents-list{
display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column;
width: 100%;
height: 100%;
}
.flex-row{
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
    margin-bottom: 5px;
}
.field-has-addons{
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
.control-is-expanded{
-webkit-box-flex: 1;
    flex-grow: 1;
margin-right: -1px;
flex: 1 1 auto;
font-size: 1rem;
    position: relative;
    text-align: left;
margin: 0;
    padding: 0;    
}
.control-flex-props-fixed{
-webkit-box-flex: 0;
    flex: 0 0 auto;
font-size: 1rem;
    position: relative;
    text-align: left;
margin: 0;
    padding: 0;
}
.button-is-primary{
border-bottom-left-radius: 0;
    border-top-left-radius: 0;
background-color: yellow;
    border-color: transparent;
    color: black;
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
.outer-pretty-scroll{
position: relative;
touch-action: auto;
    overflow: hidden !important;
}
.pretty-scroll-wrapper{

}
.inner-wrapper{

}
.cool-tree{
padding: 1px;
list-style: none;
}
.tree-item-root{
margin: 0;
padding: 0;
}
.cool-tree-item{
height: 34px;
display: flex;
    -webkit-box-align: center;
    align-items: center;
    margin-bottom: 5px;
    background-color: #f8faff;
    border: 1px solid #dae2ea;
    border-radius: 3px;
    font-size: 1.14286rem;
}
.list-fold-icon-is-small{
cursor: pointer;
    color: black;
    -webkit-box-flex: 0;
    flex: 0 0 auto;
    font-size: 1.14286rem;
    margin-left: 8px;
}
.fa fa-chevron-down{
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
.item-name{
-webkit-box-flex: 1;
    flex: 1 1 auto;
    font-size: 1rem;
    max-width: 100%;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
    vertical-align: middle;
}
.tree-list{
padding: 0px;
margin-left: 20px;
list-style: none;
}
.card-footer{
-webkit-box-flex: 0;
    flex: 0 0 auto;
display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column;
    width: 100%;
    border-top: 1px solid #dbdbdb;
    -webkit-box-align: stretch;
    align-items: stretch;
}
/*휴가내역관리 왼쪽 끝*/

/*휴가내역관리 오른쪽*/
.column-right{
margin: 0;
    padding: 0 !important;
height: 100%;
display: block;
-webkit-box-flex: 1;
}
.vacation-summary-list{
width: 100%;
height: 100%;
background-color: #fff;
    box-shadow: 0 2px 3px rgba(10,10,10,0.1), 0 0 0 1px rgba(10,10,10,0.1);
    color: #4a4a4a;
    max-width: 100%;
    position: relative;
}
.datagrid-vacation-summary-list{
box-sizing: border-box;
-webkit-box-flex: 1;
    flex: 1 1 auto;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column;
    height: 100%
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
}
.toolbar-left{
display: flex;
    align-items: center;
box-sizing: border-box;
}
.flex-row-marginless{
box-sizing: border-box;
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
    margin: 0 !important;
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
    box-sizing: border-box;
    font-weight: 700 !important;
}
.datagrid-search-menu-vacation-history{
box-sizing: border-box;
}
.field-addons-marginless{
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
box-sizing: border-box;
margin: 0 !important;
}
.ontrol-icons-left{
margin-right: -1px;
box-sizing: border-box;
font-size: 1rem;
    position: relative;
    text-align: left;
   margin: 0;
    padding: 0; 
}
.icon-small-left{
left: 0;
color: #dbdbdb;
    height: 2.25em;
    pointer-events: none;
    position: absolute;
    top: 0;
    width: 2.25em;
    z-index: 4;
box-sizing: border-box;
-webkit-box-align: center;
    align-items: center;
    display: inline-flex;
    -webkit-box-pack: center;
    justify-content: center;
}
.fa fa-search{
font-size: 14px;
box-sizing: border-box;
display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
text-rendering: auto;
    -webkit-font-smoothing: antialiased;
}
.control-dropdown-opened{
box-sizing: border-box;
position: relative;
    display: inline-block;
font-size: 1rem;
text-align: left;
}
.dorpdown-trigger{
display: block;
box-sizing: border-box;
}
.button{
border-bottom-left-radius: 0;
    border-top-left-radius: 0;
box-sizing: border-box;
background-color: #fff;
    border-color: #dbdbdb;
    border-width: 1px;
    color: #404040;
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
.icon-small-left{
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
}
.fa fa-chevron-down{
font-size: 14px;
box-sizing: border-box;
display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
}
.dropdown-contents{
z-index: 50;
width: auto;
box-sizing: border-box;
}
.search-menu-contents-box{
width: 432px;
    max-height: 560px;
margin-bottom: 20px;
margin-top: 5px;
box-sizing: border-box;
padding: 20px;
background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 2px 3px rgba(10,10,10,0.1), 0 0 0 1px rgba(10,10,10,0.1);
    color: #4a4a4a;
    display: block;
    padding: 1.25rem;
}
.flex-row{
box-sizing: border-box;
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
    margin-bottom: 5px;
}
.flex-column{
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
    overflow: hidden;
    -webkit-box-flex: 1;
    flex: 1 1 auto;
    margin-right: 10px;
box-sizing: border-box;
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
.input-search-year-input{
width: 120px;
box-sizing: border-box;
background-color: #fff;
    border-color: #dbdbdb;
    color: #404040;
    box-shadow: inset 0 1px 2px rgba(10,10,10,0.1);
    max-width: 100%;
    -webkit-box-align: center;
    align-items: center;
    border: 1px solid transparent;
    border-radius: 3px;
    display: inline-flex;
    font-size: 1rem;
    height: 2.25em;
    -webkit-box-pack: start;
    justify-content: flex-start;
    line-height: 1.5;
    padding-bottom: calc(0.375em - 1px);
    padding-left: calc(0.625em - 1px);
    padding-right: calc(0.625em - 1px);
    padding-top: calc(0.375em - 1px);
    position: relative;
    vertical-align: top;
    margin: 0;
}
.flex-row-between{
margin-bottom: 0px;
-webkit-box-pack: justify;
    justify-content: space-between;
    box-sizing: border-box;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
}
.flex-column left{
-webkit-box-pack: start;
    justify-content: flex-start;
display: flex;
-webkit-box-align: center;
    align-items: center;
    overflow: hidden;
    -webkit-box-flex: 1;
    flex: 1 1 auto;
    margin-right: 10px;
    box-sizing: border-box;
}
.flex-column-fixed-narrow{
-webkit-box-flex: 0;
    flex: 0 0 auto;
margin-right: 5px;
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
    overflow: hidden;
    box-sizing: border-box;
}
.cool-checkbox{
position: relative;
    display: inline-block;
    width: 22px;
    height: 22px;
transform: translateZ(0);
box-sizing: border-box;
}
.flex-column right{
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
.field-grouped{
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
box-sizing: border-box;
}
.control{
flex-shrink: 0;
box-sizing: border-box;
font-size: 1rem;
    position: relative;
    text-align: left;
    margin: 0;
    padding: 0;
}
.toolbar-right{
display: flex;
    align-items: center;
box-sizing: border-box;
}
.toolitip{
margin-right: 10px;
box-sizing: border-box;
}
.trigger{
box-sizing: border-box;
}
.button-primary-outlined{
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
    position: relative;
    vertical-align: top;
    user-select: none;
    text-decoration: none;
}
.icon-small{
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
}
.fa fa-calculator{
font-size: 14px;
box-sizing: border-box;
display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
}
.i-app-excel{
font-size: 14px;
}
.datagrid-column-toggle-dropdown{
margin-right: 0px;
box-sizing: border-box;
position: relative;
    display: inline-block;
}
.dropdown-trigger{
display: block;
box-sizing: border-box;
}
.fa fa-list-u{
font-size: 14px;
box-sizing: border-box;
display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
}
.dropdown-contents{
z-index: 50;
    width: auto;
box-sizing: border-box;
}
.box{
margin-bottom: 20px;
box-sizing: border-box;
padding: 20px;
background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 2px 3px rgba(10,10,10,0.1), 0 0 0 1px rgba(10,10,10,0.1);
    color: #4a4a4a;
    display: block;
}
.radio{
vertical-align: baseline;
box-sizing: border-box;
margin: 0;
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
overflow: hidden;
box-sizing: border-box;
}
.grid-table{
width: 100%;
margin-bottom: 0px;
    table-layout: fixed;
    border-collapse: collapse;
    border-spacing: 0;
box-sizing: border-box;
}
.datagrid-header-th-moveable{
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
}
.datagrid-header-sortable{
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
.data-grid-header-th-moveable{
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
}
.group-header-row{
background: #fafafa;
font-weight: bold;
box-sizing: border-box;
}
.group-header-cell{
box-sizing: border-box;
}
.fold-group{
height: 1rem;
    width: 1rem;
    margin-right: 10px;
    align-items: center;
    display: inline-flex;
    justify-content: center;
box-sizing: border-box;
}
.fa fa-caret-down{

}
.loader-wrapper{
position: absolute;
width: 100%;
box-sizing: border-box;
}
.datagrid-pagenation{
box-sizing: border-box;
position: relative;
display: flex;
    -webkit-box-pack: center;
    justify-content: center;
    padding: 10px 20px;
}
.navigation{
box-sizing: border-box;
-webkit-box-pack: justify;
    justify-content: space-between;
-webkit-box-align: center;
    align-items: center;
    display: flex;
    text-align: center;
    font-size: 1rem;
    margin: -.25rem;
}
.pagination-list{
box-sizing: border-box;
-webkit-box-flex: 1;
    flex-grow: 1;
    flex-shrink: 1;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-ordinal-group: 2;
    order: 1;
flex-wrap: wrap;
-webkit-box-align: center;
    align-items: center;
    display: flex;
    text-align: center;
    margin: 0;
    padding: 0;
}
.pagination-link{
cursor: not-allowed;
background-color: #dbdbdb;
    border-color: #dbdbdb;
    box-shadow: none;
    color: #7a7a7a;
    opacity: 0.5;
    pointer-events: none;
    box-sizing: border-box;
    min-width: 2.25em;
    font-size: 1em;
    padding-left: 0.5em;
    padding-right: 0.5em;
    -webkit-box-pack: center;
    justify-content: center;
    margin: 0.25rem;
    text-align: center;
    -webkit-box-align: center;
    align-items: center;
    border: 1px solid transparent;
    border-radius: 3px;
    display: inline-flex;
    height: 2.25em;
    line-height: 1.5;
    padding-bottom: calc(0.375em - 1px);
    padding-top: calc(0.375em - 1px);
    position: relative;
    vertical-align: top;
    user-select: none;
    text-decoration: none;
}
.fa fa-angle-left{
box-sizing: border-box;
isplay: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    font-size: inherit;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
}
.pagination-link-current{
background-color: yellow;
    border-color: black;
    color: black;
    box-sizing: border-box;
    min-width: 2.25em;
    font-size: 1em;
    padding-left: 0.5em;
    padding-right: 0.5em;
    -webkit-box-pack: center;
    justify-content: center;
    margin: 0.25rem;
    text-align: center;
    -webkit-box-align: center;
    align-items: center;
    border: 1px solid transparent;
    border-radius: 3px;
    box-shadow: none;
    display: inline-flex;
    height: 2.25em;
    line-height: 1.5;
    padding-bottom: calc(0.375em - 1px);
    padding-top: calc(0.375em - 1px);
    position: relative;
    vertical-align: top;
}
.pagenation-perpage{
position: absolute;
    right: 20px;
box-sizing: border-box;
}
.select{
height: 2.25em;
box-sizing: border-box;
display: inline-block;
    max-width: 100%;
    position: relative;
    vertical-align: top;
}
/*휴가내역관리 오른쪽 끝*/

/*휴가내역관리 스타일 끝*/

/*휴가부여및 차감 모달창스타일*/
.form-vacation-add-minus-modal{
box-sizing: inherit;
}
.modal-very-active-card{
display: flex;
z-index: 1000;
-webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    overflow: hidden;
    position: fixed;
    bottom: 0;
    left: 0;
    right: 0;
    top: 0;
}
.modal-background{
background-color: rgba(10,10,10,0.35);
bottom: 0;
    left: 0;
    position: absolute;
    right: 0;
    top: 0;
}
.modal-content-wrapper-card{
height: 100%;
width: 850px;
margin: 0;
display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column;
    overflow: hidden;
}
.modal-card-head-flex-row{
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
border-bottom: 1px solid #dbdbdb;
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;
background-color: #f5f5f5;
flex-shrink: 0;
padding: 20px;
    position: relative;
}
.modal-card-title{
-webkit-box-flex: 1;
    flex: 1 1 auto;
    overflow: hidden;
max-width: 100%;
white-space: nowrap;
    text-overflow: ellipsis;
    color: #404040;
    font-size: 1.28571rem;
    line-height: 1;
    margin: 0;
    padding: 0;
    user-select: none;
}
.delete-modal-column-fixed{
overflow: hidden;
background-color: rgba(10,10,10,0.2);
    border: none;
    border-radius: 290486px;
    cursor: pointer;
    display: inline-block;
font-size: 0;
    height: 20px;
    max-height: 20px;
    max-width: 20px;
    min-height: 20px;
    min-width: 20px;
    outline: none;
    position: relative;
    vertical-align: top;
    width: 20px;
    margin: 0;
    box-sizing: inherit;
}
.modal-card-body-paddingless{
height: 100%;
background-color: white;
    -webkit-box-flex: 1;
    flex-grow: 1;
    flex-shrink: 1;
    overflow: auto;
padding: 0 !important;
display: block;
}
.app-remote-contents-column{
display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column;
height: 100%;
box-sizing: inherit;
}
.app-card-section-item-props{
border-bottom: 1px solid #dbdbdb;
    padding: 20px 30px;
-webkit-box-flex: 0;
    flex: 0 0 auto;
box-sizing: inherit;
}
.app-subheader-block{
margin-bottom: 20px;
display: block;
box-sizing: inherit;
}
.sub-header-text{
font-size: 1rem;
    font-weight: bold;
    margin-bottom: 10px;
box-sizing: inherit;
}
.flex-row-bottom-twice{
margin-bottom: 10px;
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
box-sizing: inherit;
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
.select-flex-column-fixed{
-webkit-box-flex: 0;
    flex: 0 0 auto;
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
    overflow: hidden;
margin-right: 10px;
height: 2.25em;
max-width: 100%;
    position: relative;
    vertical-align: top;
}
.select-flex-column-fixed{
-webkit-box-flex: 0;
    flex: 0 0 auto;
margin-right: 0px;
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
    overflow: hidden;
    height: 2.25em;
    max-width: 100%;
    position: relative;
    vertical-align: top;
}
.field-addons-marginless{
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
margin: 0 !important;
box-sizing: inherit;
}
.control-expanded{
-webkit-box-flex: 1;
    flex-grow: 1;
margin-right: -1px;
font-size: 1rem;
    position: relative;
    text-align: left;
    margin: 0;
    padding: 0;
    box-sizing: inherit;
}
.dateinput{
display: inline-block;
width: 100%;
}
.input{
border-bottom-right-radius: 0;
    border-top-right-radius: 0;
background-color: #fff;
    border-color: #dbdbdb;
    color: #404040;
    box-shadow: inset 0 1px 2px rgba(10,10,10,0.1);
    max-width: 100%;
    width: 100%;
    -webkit-box-align: center;
    align-items: center;
    border: 1px solid transparent;
    border-radius: 3px;
    display: inline-flex;
    font-size: 1rem;
    height: 2.25em;
    -webkit-box-pack: start;
    justify-content: flex-start;
    line-height: 1.5;
    padding-bottom: calc(0.375em - 1px);
    padding-left: calc(0.625em - 1px);
    padding-right: calc(0.625em - 1px);
    padding-top: calc(0.375em - 1px);
    position: relative;
    vertical-align: top;
    margin: 0;
}
.control{
font-size: 1rem;
    position: relative;
    text-align: left;
margin: 0;
    padding: 0;
}
.button-static{
border-bottom-left-radius: 0;
    border-top-left-radius: 0;
background-color: #f5f5f5;
    border-color: #dbdbdb;
    color: #7a7a7a;
    box-shadow: none;
    pointer-events: none;
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
    display: inline-flex;
    font-size: 1rem;
    height: 2.25em;
    line-height: 1.5;
    vertical-align: top;
    user-select: none;
    text-decoration: none;
}
.fa fa-calendar{
font-size: 14px;
display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
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
.app-vacation-count-input{
margin-bottom: 0px;
flex-wrap: wrap;
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
}
.flex-column-fixed-narrow{
-webkit-box-flex: 0;
    flex: 0 0 auto;
margin-right: 5px;
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
    overflow: hidden;
}
.input-small{
width: 55px;
background-color: #fff;
    border-color: #dbdbdb;
    color: #404040;
    box-shadow: inset 0 1px 2px rgba(10,10,10,0.1);
    max-width: 100%;
-webkit-box-align: center;
    align-items: center;
    border: 1px solid transparent;
    border-radius: 3px;
    display: inline-flex;
    font-size: 1rem;
    height: 2.25em;
    -webkit-box-pack: start;
    justify-content: flex-start;
    line-height: 1.5;
    padding-bottom: calc(0.375em - 1px);
    padding-left: calc(0.625em - 1px);
    padding-right: calc(0.625em - 1px);
    padding-top: calc(0.375em - 1px);
    position: relative;
    vertical-align: top;
}
.flex-column-fixed-label-text{
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
.select-small{
width: 55px;
height: 2.25em;
display: inline-block;
    max-width: 100%;
    position: relative;
    vertical-align: top;
}
.app-card-section-item-column-props{
border-bottom: 0;
padding: 20px 30px;
-webkit-box-flex: 1;
    flex: 1 1 auto;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column;
}
.app-subheader-block-props-fixed{
margin-bottom: 20px;
-webkit-box-flex: 0;
    flex: 0 0 auto;
    display: block;
}
.sub-header-text{
font-size: 1rem;
    font-weight: bold;
    margin-bottom: 10px;
box-sizing: inherit;
}
.flex-props-full-cut-dependency{
-webkit-box-flex: 1;
    flex: 1 1 auto;
display: flex;
    position: relative;
}
.columns-marginless-full-width-height{
display: flex;
position: absolute;
width: 100%;
height: 100%;
}
.column-paddingless{
display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column;
flex-basis: 0;
    -webkit-box-flex: 1;
    flex-grow: 1;
    flex-shrink: 1;
padding: 0 !important;
}
.flex-props-fixed-toolbar{
-webkit-box-flex: 0;
    flex: 0 0 auto;
}
.pretty-scroll-flex-props{
position: relative;
touch-action: auto;
    overflow: hidden !important;
-webkit-box-flex: 1;
    flex: 1 1 auto;
}
.pretty-scroll-wrapper{

}
.app-remote-contents{

}
.cool-tree{
padding: 1px;
list-style: none;
}
.tree-item-root{
margin: 0;
padding: 0;
}
.cool-tree-item{
box-shadow: 0 0 0 1px yellow;
    border: 1px solid yellow;
height: 34px;
display: flex;
    -webkit-box-align: center;
    align-items: center;
    margin-bottom: 5px;
    background-color: #f8faff;
    border-radius: 3px;
    font-size: 1.14286rem;
}
.list-fold-icon-small{
cursor: pointer;
    color: #009AF0;
    -webkit-box-flex: 0;
    flex: 0 0 auto;
    font-size: 1.14286rem;
    margin-left: 8px;
height: 1rem;
    width: 1rem;
-webkit-box-align: center;
    align-items: center;
display: inline-flex;
    -webkit-box-pack: center;
    justify-content: center;
}
.fa fa-chevron-down{
font-size: 1.14286rem;
}
.tree-list{
padding: 0px;
    margin-left: 20px;
list-style: none;
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
}
.scrollbar-y{
position: absolute;
    background-color: #aaa;
    border-radius: 6px;
    transition: background-color .2s linear, height .2s linear, width .2s ease-in-out, border-radius .2s ease-in-out;
    right: 2px;
    width: 7px;
}
.column-paddingless-flex-display{
border: 1px solid #dbdbdb;
display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column;
flex-basis: 0;
    -webkit-box-flex: 1;
    flex-grow: 1;
    flex-shrink: 1;
    padding: 0 !important;
}
.flex-props-fixed-toolbar{
border-bottom: 1px solid #dbdbdb;
    padding: 10px 15px;
-webkit-box-flex: 0;
    flex: 0 0 auto;
}
.app-member-search-list-new{
height: 80px;
-webkit-box-flex: 1;
    flex: 1 1 auto;
display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column;
width: 100%;
}
.field-addons-props-fixed{
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
margin-bottom: 0.75rem;
-webkit-box-flex: 0;
    flex: 0 0 auto;
}
.control-flex-props-fixed{
-webkit-box-flex: 0;
    flex: 0 0 auto;
font-size: 1rem;
    position: relative;
    text-align: left;
    margin: 0;
    padding: 0;
}
.button-primary{
border-bottom-left-radius: 0;
    border-top-left-radius: 0;
background-color: yellow;
    border-color: transparent;
    color: black;
}
.flex-props-full-fit-parent{
overflow: auto;
-webkit-box-flex: 1;
    flex: 1 1 auto;
display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column;
    height: 100%;
    width: 100%;
}
.outer-pretty-scroll{
position: relative;
touch-action: auto;
    overflow: hidden !important;
}
.pretty-scroll-wrapper{

}
.inner-wrapper{

}
.app-selectable-member-list{

}
.cool-item{
height: 34px;
display: flex;
    -webkit-box-align: center;
    align-items: center;
    margin-bottom: 5px;
    background-color: #f8faff;
    border: 1px solid #dae2ea;
    border-radius: 3px;
    font-size: 1.14286rem;
}
.item-text{
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
.item-row-flex-row{
padding-right: 8px;
margin-bottom: 0px;
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
}
.avatar-wrapper-column{
height: 32px;
    width: 32px;
    background-color: #c7cbd5;
display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    border: 1px solid #c7cbd5;
    border-top-left-radius: 3px;
    border-bottom-left-radius: 3px;
-webkit-box-flex: 0;
    flex: 0 0 auto;
}
.vue-avatar-wrapper{

}
.flex-column{
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
    overflow: hidden;
    -webkit-box-flex: 1;
    flex: 1 1 auto;
    margin-right: 10px;
}
.full-ellipsis{
max-width: 100%;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
    vertical-align: middle;
}
.app-infinite-scroll{
width: 100%;
}
.infinite-loading-container{
clear: both;
    text-align: center;
min-width: 1px;
}
.modal-card-footer-notification{
-webkit-box-flex: 0;
    flex: 0 0 auto;
display: block;
}
.modal-card-foot{
border-bottom-left-radius: 5px;
    border-bottom-right-radius: 5px;
    border-top: 1px solid #dbdbdb;
-webkit-box-align: center;
    align-items: center;
    background-color: #f5f5f5;
    display: flex;
    flex-shrink: 0;
    -webkit-box-pack: start;
    justify-content: flex-start;
    padding: 20px;
    position: relative;
}
.right-align-wrapper{
display: flex;
    -webkit-box-orient: horizontal;
    -webkit-box-direction: normal;
    flex-direction: row;
    -webkit-box-pack: end;
    justify-content: flex-end;
    width: 100%;
}
/*휴가 부여 및 차감 모달창 스타일 끝*/


/*휴가 상세 내역 페이지 모달창 스타일*/
.modal-active-card-full-modal{
display: flex;
z-index: 1000;
-webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    overflow: hidden;
    position: fixed;
    bottom: 0;
    left: 0;
    right: 0;
    top: 0;
}
.modal-background{
background-color: rgba(10,10,10,0.35);
bottom: 0;
    left: 0;
    position: absolute;
    right: 0;
    top: 0;
}
.modal-content-wrapper-modal-card{
height: 100%;
width: calc(100% - 40px);
margin: 0;
display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column;
overflow: hidden;
}
.modal-card-head-modal-flex-row{
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
border-bottom: 1px solid #dbdbdb;
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;
    background-color: #f5f5f5;
    flex-shrink: 0;
    padding: 20px;
    position: relative;
}
.modal-card-title-ellipsis-column{
-webkit-box-flex: 1;
    flex: 1 1 auto;
    overflow: hidden;
max-width: 100%;
white-space: nowrap;
    text-overflow: ellipsis;
    color: #404040;
    font-size: 1.28571rem;
    line-height: 1;
    margin: 0;
    padding: 0;
}
.delete-modal-flex-column-fixed{
-webkit-box-flex: 0;
    flex: 0 0 auto;
overflow: hidden;
background-color: rgba(10,10,10,0.2);
    border: none;
    border-radius: 290486px;
    cursor: pointer;
    display: inline-block;
    font-size: 0;
    height: 20px;
    max-height: 20px;
    max-width: 20px;
    min-height: 20px;
    min-width: 20px;
    outline: none;
    position: relative;
    vertical-align: top;
    width: 20px;
    user-select: none;
    margin: 0;
}
.modal-card-body2{
height: 100%;
background-color: #fff;
    -webkit-box-flex: 1;
    flex-grow: 1;
    flex-shrink: 1;
    overflow: auto;
    padding: 20px;
display: block;
}
.app-remote-contents2{
height: 100%;
}
.flex-display-column2{
display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column;
height: 100%;
}
.flex-props-fixed-toolbar2{
box-shadow: none;
    border: 1px solid #dbdbdb;
    margin-bottom: 0px;
    border-bottom: 0px;
background-color: #fff;
    border-radius: 0px;
    padding: 0px;
    -webkit-box-flex: 0;
    flex: 0 0 auto;
    color: #4a4a4a;
    display: block;
}
.toolbar-wrapper2{
height: 96px;
display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    justify-content: space-between;
    flex-wrap: nowrap;
    padding: 20px 30px;
}
.toolbar-left2{
display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-flex: 1;
    flex: 1 1 auto;
}
.flex-column-fixed-row-marginless{
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
margin: 0 !important;
}
.vue-avatar-wrapper-column2{
-webkit-box-flex: 0;
    flex: 0 0 auto;
-webkit-box-pack: start;
-webkit-box-align: center;
overflow: hidden;
margin-right: 10px;
}
.flex-display-column2{
-webkit-box-flex: 0;
    flex: 0 0 auto;
margin-right: 0px;
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    overflow: hidden;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column;
}
.has-text-weight-bold{
font-weight: 700 !important;
}
.toolbar-right2{
display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-flex: 0;
    flex: 0 0 auto;
}
.has-text-weight-bold-column-fixed{
font-weight: 700 !important;
}
.app-toolbar-box-bordered2{
box-shadow: none;
    border: 1px solid #dbdbdb;
    margin-bottom: 0px;
    border-bottom: 0px;
background-color: #fff;
    border-radius: 0px;
    padding: 0px;
    -webkit-box-flex: 0;
    flex: 0 0 auto;
    color: #4a4a4a;
    display: block;
}
.toolbar-wrapper2{
height: 96px;
display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    justify-content: space-between;
    flex-wrap: nowrap;
    padding: 20px 30px;
}
.toolbar-left2{
display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-flex: 1;
    flex: 1 1 auto;
}
.flex-display-column-fixed2{
margin-right: 0px;
display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column;
}
.flex-column-fixed-row2{
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
    margin-bottom: 5px;
}
.has-text-weight-bold-column-fixed{
-webkit-box-flex: 0;
    flex: 0 0 auto;
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
    overflow: hidden;
    font-weight: 700 !important;
}
.select{
height: 2.25em;
display: inline-block;
    max-width: 100%;
    position: relative;
    vertical-align: top;
}
.flex-column2{
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
.cool-checkbox-column2{
-webkit-box-flex: 0;
    flex: 0 0 auto;
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
    overflow: hidden;
    margin-right: 10px;
    position: relative;
    width: 22px;
    height: 22px;
}
.flex-column-fixed-row2-flex{
margin-bottom: 0px;
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
}
.has-text-weight-bold-column-fixed2{
-webkit-box-flex: 0;
    flex: 0 0 auto;
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
    overflow: hidden;
    font-weight: 700 !important;
}
.daterange-input-app-daterangeinput{
display: inline-flex;
    flex-direction: row;
    align-items: center;
}
.dateinput-dateinput{
flex: 1 1 auto;
display: inline-block;
}
.after{
flex: 0 0 auto;
}
.control{
font-size: 1rem;
    position: relative;
    text-align: left;
margin: 0;
    padding: 0;
}
.button-is-static{
border-top-left-radius: 0px;
    border-bottom-left-radius: 0px;
    border-left: 0px;
    z-index: 0;
background-color: #f5f5f5;
    border-color: #dbdbdb;
    color: #7a7a7a;
    box-shadow: none;
    pointer-events: none;
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
    display: inline-flex;
    font-size: 1rem;
    height: 2.25em;
    line-height: 1.5;
    position: relative;
    vertical-align: top;
    user-select: none;
    text-decoration: none;
}
.icon-small2{
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
.fa fa-calendar{
font-size: 14px;
display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
}
.seperator{
margin: 0px 5px;
    flex: 0 0 auto;
}
.toolbar-right2{
display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-flex: 0;
    flex: 0 0 auto;
}
.flex-column-button-primary-outlined2{
margin-right: 0px;
background-color: transparent;
    border-color: yellow;
    color: black;
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
.icon-is-small2{
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
.app-common-vacation-history-list2{
-webkit-box-flex: 1;
    flex: 1 1 auto;
display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column;
}
.columns-grids-marginless-props{
display: flex;
-webkit-box-flex: 1;
    flex: 1 1 auto;
margin: 0 !important;
}
.column-half-paddingless-left{
-webkit-box-flex: 0;
    flex: none;
    width: 50%;
display: block;
padding: 0 !important;
}
.app-datagrid-theme{
box-sizing: border-box;
display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column;
height: 100%;
}
.datagrid-toolbar{
border-right: none;
border: 1px solid #dbdbdb;
height: 56px;
    padding: 20px;
    margin-bottom: 0px;
    justify-content: space-between;
    align-items: center;
    z-index: 10;
    position: relative;
    width: 100%;
    display: inline-flex;
}
.toolbar-left3{
display: flex;
    align-items: center;
}
.toolbar-right3{
display: flex;
    align-items: center;
}
.datagrid-column-toggle-dropdown{
margin-right: 10px;
box-sizing: border-box;
position: relative;
    display: inline-block;
}
.dropdown-trigger{
display: block;
box-sizing: border-box;
}
.fa fa-list-ul{
font-size: 14px;
box-sizing: border-box;
display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
}
.dropdown-contents{
z-index: 50;
    width: auto;
}
.box{
margin-bottom: 20px;
box-sizing: border-box;
padding: 20px;
background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 2px 3px rgba(10,10,10,0.1), 0 0 0 1px rgba(10,10,10,0.1);
    color: #4a4a4a;
    display: block;
}
.flex-row3{
box-sizing: border-box;
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
    margin-bottom: 5px; 
}
.grid-wrapper-right{
border-color: #dbdbdb;
overflow: hidden;
    display: flex;
    flex-direction: column;
    position: relative;
    border: 1px solid #CCC;
}
.grid-header-table-right{
border-bottom: 1px solid #dbdbdb;
    background-color: #fafafa;
flex: 0 0 auto;

}
.grid-table-right{
width: 100%;
margin-bottom: 0px;
    table-layout: fixed;
    border-collapse: collapse;
    border-spacing: 0;

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
    color: #404040;
}
.datagrid-header-checkbox{
vertical-align: middle;
width: 100%;
    align-items: center;
    justify-content: center;
    overflow: hidden;
cursor: default;
line-height: 1.25;
    position: relative;
}
.datagrid-header-sortable{
display: flex;
    width: 100%;
    align-items: center;
    justify-content: center;
    overflow: hidden;
    padding: 0px 0.25em;
    cursor: default;
box-sizing: border-box;
}
.grid-body-table{
flex: 1 1 auto;
    overflow-y: scroll;
    overflow-x: scroll;
    min-height: 80px;
}
.grid-table{
margin-bottom: 0px;
    table-layout: fixed;
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
}
.placeholders{
width: 100%;
    height: 100%;
}
.grid-rows-table2{
width: 100%;
    height: 100%;
}
.group-header-row{
background: #fafafa;
font-weight: bold;
}
.group-row-datagrid-row{

}
.datagrid-cell-wrapper{
background-color: #ffffff;
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
}
.datagrid-cell-default{
max-width: 100%;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
    vertical-align: middle;
    display: inline-block;
width: 100%;
}
.datagrid-cell-custom-giveCount{
overflow: hidden;
    width: 100%;
}
.datagrid-cell-action{
overflow: hidden;
    width: 100%;
}
.grid-link-edit-row-button{
margin-right: 0px;
cursor: pointer;
color: black;
text-decoration: none;
}
.loader-wrapper2{
position: absolute;
width: 100%;
}
.loader-app-loader2{
display: flex;
    flex: 0 1 auto;
    flex-flow: row wrap;
    align-items: center;
    justify-content: center;
}
.v-spinner2{
box-sizing: border-box;
text-align: center;
}
.column-half-paddingless-right{
-webkit-box-flex: 0;
    flex: none;
    width: 50%;
display: block;
padding: 0 !important;
}
.app-datagrid-theme{
-webkit-box-flex: 1;
    flex: 1 1 auto;
display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column;
    height: 100%;
}
.datagrid-toolbar2{
border: 1px solid #dbdbdb;
height: 56px;
    padding: 20px;
    margin-bottom: 0px;
    justify-content: space-between;
    align-items: center;
    z-index: 10;
    position: relative;
    width: 100%;
    display: inline-flex;
}
.toolbar-left2{
display: flex;
    align-items: center;
}
.toolbar-right2{
display: flex;
    align-items: center;
}
.datagrid-column-toggle-dropdown2{
margin-right: 10px;
box-sizing: border-box;
position: relative;
    display: inline-block;
}
.dropdown-trigger2{
display: block;
box-sizing: border-box;
}
.grid-wrapper2{
border-color: #dbdbdb;
overflow: hidden;
    display: flex;
    flex-direction: column;
    position: relative;
    border: 1px solid #CCC;
}
.grid-header-table2{
border-bottom: 1px solid #dbdbdb;
    background-color: #fafafa;
flex: 0 0 auto;
overflow: hidden;
}
.grid-table2{
width: 100%;
margin-bottom: 0px;
    table-layout: fixed;
    border-collapse: collapse;
    border-spacing: 0;
}
.datagrid-header-th2{
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
    color: #404040;
}
.datagrid-header-sortable2{
display: flex;
    width: 100%;
    align-items: center;
    justify-content: center;
    overflow: hidden;
    padding: 0px 0.25em;
    cursor: default;
box-sizing: border-box;
}
.grid-body-table2{
flex: 1 1 auto;
    overflow-y: scroll;
    overflow-x: auto;
    min-height: 80px;
box-sizing: border-box;
}
.grid-table2{
margin-bottom: 0px;
    table-layout: fixed;
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
box-sizing: border-box;
}
.placeholder-cell{
text-align: center;
    padding: 20px;
    color: #AAA;
}
.grid-footer-text-centered-flex-props{
-webkit-box-flex: 0;
    flex: 0 0 auto;
text-align: center !important;
}
.column-marginless2{
display: flex;
margin: 0 !important;
}
.column2{
border: 1px solid #dbdbdb;
    border-right-width: 0px;
    padding: 10px 30px;
display: block;
    flex-basis: 0;
    -webkit-box-flex: 1;
    flex-grow: 1;
    flex-shrink: 1;
}
.column-has-text-info{
border: 1px solid #dbdbdb;
    border-right-width: 0px;
    padding: 10px 30px;
display: block;
    flex-basis: 0;
    -webkit-box-flex: 1;
    flex-grow: 1;
    flex-shrink: 1;
    color: yellow !important;
}
.column-has-text-danger{
border-right-width: 1px;
border: 1px solid #dbdbdb;
padding: 10px 30px;
display: block;
    flex-basis: 0;
    -webkit-box-flex: 1;
    flex-grow: 1;
    flex-shrink: 1;
    color: #eb4c37 !important;
}
.modal-card-footer-notification2{
-webkit-box-flex: 0;
    flex: 0 0 auto;
display: block;
}
.modal-card-foot2{
border-bottom-left-radius: 5px;
    border-bottom-right-radius: 5px;
    border-top: 1px solid #dbdbdb;
-webkit-box-align: center;
    align-items: center;
    background-color: #f5f5f5;
    display: -webkit-box;
    display: flex;
    flex-shrink: 0;
    -webkit-box-pack: start;
    justify-content: flex-start;
    padding: 20px;
    position: relative;
}
.modal-footer2{
display: flex;
    -webkit-box-orient: horizontal;
    -webkit-box-direction: normal;
    flex-direction: row;
    -webkit-box-pack: end;
    justify-content: flex-end;
    width: 100%;
}
/* 휴가 상세 내역 페이지 모달창 스타일 끝*/



/*휴가정보 엑셀 다운로드 모달창 스타일*/
.app-form-modal3{


}
.modal-active-card-modal{
display: flex;
z-index: 1000;
-webkit-box-align: center;
    align-items: center;
-webkit-box-pack: center;
    justify-content: center;
    overflow: hidden;
    position: fixed;  
}
.modal-background{
background-color: rgba(10,10,10,0.35);
bottom: 0;
    left: 0;
    position: absolute;
    right: 0;
    top: 0;
}
.modal-content-wrapper-modal-card{
margin: 0;
display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column;
    overflow: hidden;
    width: 640px;
    position: relative;
}
.modal-card-head-modal-flex-row{
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
border-bottom: 1px solid #dbdbdb;
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;
background-color: #f5f5f5;
flex-shrink: 0;
padding: 20px;
    position: relative;
}
.modal-card-title-ellipsis-modal{
max-width: 100%;
-webkit-box-flex: 1;
    flex: 1 1 auto;
    overflow: hidden;
white-space: nowrap;
    text-overflow: ellipsis;
    color: #404040;
    font-size: 1.28571rem;
    line-height: 1;
}
.modal-card-body-paddingless{
background-color: white;
    -webkit-box-flex: 1;
    flex-grow: 1;
    flex-shrink: 1;
    overflow: auto;
padding: 0 !important;
display: block;
}
.app-card-section-item{
border-bottom: 1px solid #dbdbdb;
    padding: 20px 30px;
}
.app-subheader-block{
margin-bottom: 20px;
display: block;
}
.sub-header-text{
font-size: 1rem;
    font-weight: bold;
    margin-bottom: 10px;
}
.flex-row{
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
    margin-bottom: 5px;
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
.input-flex-column-fixed{
-webkit-box-flex: 0;
    flex: 0 0 auto;
background-color: #f5f5f5;
    border-color: #f5f5f5;
    box-shadow: none;
    color: #7a7a7a;
cursor: not-allowed;
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
    overflow: hidden;
    margin-right: 10px;
    pointer-events: none;
    max-width: 100%;
    border: 1px solid transparent;
    border-radius: 3px;
    font-size: 1rem;
    height: 2.25em;
    line-height: 1.5;
    padding-bottom: calc(0.375em - 1px);
    padding-left: calc(0.625em - 1px);
    padding-right: calc(0.625em - 1px);
    padding-top: calc(0.375em - 1px);
    position: relative;
    vertical-align: top;
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
.right-align-wrapper{
display: flex;
    -webkit-box-orient: horizontal;
    -webkit-box-direction: normal;
    flex-direction: row;
    -webkit-box-pack: end;
    justify-content: flex-end;
    width: 100%;
}
.button-primary{
background-color: yellow;
    border-color: transparent;
    color: black;
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
.field-has-addons-marginless{
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
margin: 0 !important;
}
.control-expanded{
-webkit-box-flex: 1;
    flex-grow: 1;
margin-right: -1px;
font-size: 1rem;
    position: relative;
    text-align: left;
}
.fa fa-folder-open{
display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    font-size: inherit;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
}
.modal-card-footer-notification{
-webkit-box-flex: 0;
    flex: 0 0 auto;
display: block;
}
.modal-card-foot{
border-bottom-left-radius: 5px;
    border-bottom-right-radius: 5px;
    border-top: 1px solid #dbdbdb;
-webkit-box-align: center;
    align-items: center;
    background-color: #f5f5f5;
    display: flex;
    flex-shrink: 0;
    -webkit-box-pack: start;
    justify-content: flex-start;
    padding: 20px;
    position: relative;
}
.modal-footer{
display: flex;
    -webkit-box-orient: horizontal;
    -webkit-box-direction: normal;
    flex-direction: row;
    -webkit-box-pack: end;
    justify-content: flex-end;
    width: 100%;
}
/*휴가정보 엑셀 다운로드 모달창 스타일 끝*/

</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/menubar.jsp"></jsp:include>


	<div id="app">
		<div class="container-style"></div>
		<div id="app-main-container">
			<div class="router-view-wrapper" style="height: 887px;">
				<div class="app-page-contents-wrapper" id="vacation-history">
					<div class="app-premium-blocker" style="overflow: visible;">
						<div class="app-remote-contents">
							<!--  -->
							<!--  -->
							<div class="app-two-column-layout-gapless">
								<div class="column-left" style="width:320px;">
									<div class="card-column-history-department">
										<header class="card-header">
											<p class="flex-column-header-text">
												<div class="flex-row-narrow">
													<div class="flex-column">
														<span class="icon-is-small">
															<i class="fa fa-users">
															
															</i>
														</span>
													</div>
													<div class="flex-column">
														<span>조직도</span>
													</div>
												</div>
											</p>
											
										</header>
										<div class="card-content-flex-props-column">
											
											<div class="remote-contents-list">
												<!--  -->
												<!--  -->
												<div class="flex-row" style="">
													<!--  -->
													<div class="field-has-addons">
														<p class="control-is-expanded">
															<input type="text" placeholder="이름, 직위/직책, 부서검색" class="input">
														</p>
														<p class="control-flex-props-fixed">
															<a class="button-is-primary">검색</a>
														</p>
													</div>
												</div>
												<div class="outer-pretty-scroll" data-ps-id="" style="max-width: calc(100% - 15px + 15px);
    											max-height: 100%; width: calc(100% - 15px + 15px);">
													<div class="pretty-scroll-wrapper" style="position: relative;">
														<div class="inner-wrapper" style="padding-right: 15px;">
															<div>
																<!-- 조직도 값 전체들어오는 화면 -->
																<ul class="cool-tree">
																	<li data-key="01" rank="0" class="tree-item-root">
																		<div class="cool-tree-item">
																			<!--  -->
																			<div class="list-fold-icon-is-small">
																				<i class="fa fa-chevron-down">
																				
																				</i>
																			</div>
																			<div class="item-text">
																				<!--  -->
																				<div class="item-name">
																							BatterFlow
																						</div>
																			</div>
																			<!--  -->
																		</div>
																		<!-- 조직도,조직원값이 들어오는곳 -->
																		<ul class="tree-list">
																			<li>
																				<c:forEach var="UserClient_vo" items="${user_list}">
																					<p><c:out value="${UserClient_vo.user_name}" /></p>		
																				</c:forEach>
																			</li>
																		</ul>
																		<!-- 조직도,조직원값이 들어오는곳 -->
																	</li>
																</ul>
																<!-- 조직도 값 전체들어오는 화면 -->
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="card-footer"></div>
									</div>
								</div>
								<div class="column-right" style="width: calc((100% - 320px) - 20px); flex: 1 1 auto;">
									<div id="vacation-summary-list" class="card-full-width-height">
										<div class="datagrid-vacation-summary-list"  lang="ko"  style="height:100%;" >
											<div class="datagrid-toolbar">
												<div class="toolbar-left">
													<div>
														<div class="flex-row-marginless">
															<span class="flex-column-fixed">휴가 기준 :</span>
															<span class="flex-column-fixed" style="margin-right:15px;">회계연도</span>
															<div class="datagrid-search-menu-vacation-history">
																<div class="field-addons-marginless">
																	<p class="control-icons-left">
																		<input type="text" placeholder="검색" class="input">
																		<span class='icon-small-left'>
																			<i class="fa fa-search">
																			
																			</i>
																		</span>
																	</p>
																	<div class="control-dropdown-opened">
																		<div class="dorpdown-trigger">
																			<a class="button">
																				<span class="icon-small-left">
																					<i class="fa fa-chevron-down">
																					
																					</i>
																				</span>
																			</a>
																		</div>
																	</div>
																</div>
																<div class="dropdown-contents" x-placement="bottom-end" style="position: fixed; will-change: top, left; top: 103px; left: 217px; display:none;">
																	<form action="#" class="search-menu-contents-box">
																		<div min-height="auto">
																			<div class="flex-row">
																				<label class="flex-column">
																					검색 연도
																				</label>
																				<div class="flex-column-right">
																					<input type="text" placeholder="검색 연도" class="input-search-year-input">
																				</div>
																			</div>
																			<div class="flex-row-between">
																				<div class="flex-column left">
																					<div>
																						<div class="flex-row">
																							<span class="flex-column-fixed-narrow">
																								<div class="cool-checkbox" checked="checked">
																									<input type="checkbox" class="checked">
																									<div class="checkbox-inner">
																										<span class="check"></span>
																									</div>
																								</div>
																							</span>
																							<span class="flex-column">사용하지 않는 휴가 종류 포함</span>
																						</div>
																					</div>
																				</div>
																				<div class="flex-column right">
																					<div class="field-grouped">
																						<!--  -->
																						<p class="control">
																							<button type="submit" class="button-primary">검색</button>
																						</p>
																					</div>
																				</div>
																			</div>
																		</div>
																	</form>
																	<!-- 오브젝트는 어디다쓰지? -->
																	<object style="display: block; position: absolute; top: 0; left: 0; height: 100%; width: 100%; 
																	overflow: hidden; pointer-events: none; z-index: -1;" type="text/html" data="about:blank">
																		#document
																			<html>
																				<head></head>
																				<body></body>
																			</html>
																	</object>
																	
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="toolbar-right">
													<span class="toolitip">
														<span class="trigger" aria-describedby="tooltip_mqlovn96u5">
															<a class="button-primary-outlined">
																<span class="icon-small">
																	<i aria-hidden="true" class="fa fa-calculator">
																		
																	</i>
																</span>
															</a>
														</span>
														<div style="display:none;"></div>
													</span>
													<a class="button-primary-outlined">
														<span class="icon-small">
															<i class="i-app-excel">
																
															</i>
														</span>
													</a>
													<div class="datagrid-column-toggle-dropdown">
														<div class="dropdown-trigger">
															<a class="button-outlined-primary">
																<span class="icon-small">
																	<i class="fa fa-list-u">
																	
																	</i>
																</span>
															</a>
														</div>
														<div class="dropdown-contents" x-placement="buttom-end" style="position:fixed; will-change: top, left; top:103px; left:1204px; display:none;">
															<div class="box" style="width:160px;">
																<div class="flex-row">
																	<div class='flex-column fixed'>
																		<input type="radio">
																	</div>
																	<div class="flex-column">
																						그룹 없음
																					</div>	
																</div>
																<div class="flex-row">
																	<div class="flex-column fixed">
																		<input type="radio" value="role">
																	</div>
																	<div class="flex-column">
																					직위/직책
																				</div>
																</div>
															</div>
															<!-- 오브젝트 -->
															<object style="display: block; position: absolute; top: 0; left: 0; height: 100%; width: 100%; 
															overflow: hidden; pointer-events: none; z-index: -1;" type="text/html" data="about:blank">
																#document
																	<html>
																		<head></head>
																		<body></body>
																	</html>
															</object>
															<!-- 오브젝트 -->
														</div>
													</div>
													<!--  -->
												</div>
											</div>
											<!--  -->
											<div class="grid-wrapper-right" style="width:100%; height:100%;">
												<div class="grid-header-table-right" style="margin-left:0px; padding-right:10px; overflow:scroll;">
													<table class="grid-table-right">
														<colgroup>
															<col width="150">
															<col width="150">
															<col width="150">
															<col width="150">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
														</colgroup>
														<thead style="width:100%; height:100%;">
															<tr data-row-index="1">
																<th data-column-name="name" rowspan="2" class="datagrid-header-th-moveable">
																	<div class="datagrid-header-sortable">
																		<span class="column-title" title="이름">이름</span>
																	</div>
																	<div class="resizer">
																				&nbsp;
																			</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th data-column-name="role" rowspan="2" class="datagrid-header-th-moveable">
																	<div class="datagrid-header-sortable">
																		<span class="column-title" title="직위/직책">직위/직책</span>
																	</div>
																	<div class="resizer">
																				&nbsp;
																			</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th data-column-name="entryDate" rowspan="2" class="datagrid-header-th-moveable">
																	<div class="datagrid-header-sortable">
																		<span class="column-title" title="입사일">입사일</span>
																	</div>
																	<div class="resizer">
																				&nbsp;
																			</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th data-column-name="empNumber" rowspan="2" class="datagrid-header-th-moveable">
																	<div class="datagrid-header-sortable">
																		<span class="column-title" title="사번">사번</span>
																	</div>
																	<div class="resizer">
																				&nbsp;
																			</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th colspan="3" data-column-name="연차 유급 휴가"  class="datagrid-header-th-moveable">
																	<div class="datagrid-header-sortable">
																		<span class="column-title" title="연차 유급 휴가">연차유급휴가</span>
																	</div>
																	<div class="resizer">
																				&nbsp;
																			</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th colspan="3" data-column-name="경조 휴가"  class="datagrid-header-th-moveable">
																	<div class="datagrid-header-sortable">
																		<span class="column-title" title="경조 휴가">경조 휴가</span>
																	</div>
																	<div class="resizer">
																				&nbsp;
																			</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th colspan="3" data-column-name="보상 휴가"  class="datagrid-header-th-moveable">
																	<div class="datagrid-header-sortable">
																		<span class="column-title" title="보상 휴가">보상 휴가</span>
																	</div>
																	<div class="resizer">
																				&nbsp;
																			</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th colspan="3" data-column-name="보건 휴가"  class="datagrid-header-th-moveable">
																	<div class="datagrid-header-sortable">
																		<span class="column-title" title="보건 휴가">보건 휴가</span>
																	</div>
																	<div class="resizer">
																				&nbsp;
																			</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th colspan="3" data-column-name="병가"  class="datagrid-header-th-moveable">
																	<div class="datagrid-header-sortable">
																		<span class="column-title" title="병가">병가</span>
																	</div>
																	<div class="resizer">
																				&nbsp;
																			</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th colspan="3" data-column-name="공가"  class="datagrid-header-th-moveable">
																	<div class="datagrid-header-sortable">
																		<span class="column-title" title="공가">공가</span>
																	</div>
																	<div class="resizer">
																				&nbsp;
																			</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
															</tr>
															
															<tr data-row-index="2">
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th data-column-name="1_give" data-column-header-name="연차 유급 휴가" rowspan="1" class="data-grid-header-th-moveable">
																	<div class="datagrid-header">
																		<span class="column-title" title="부여 일수">부여 일수</span>
																	</div>
																	<div class="resizer">
																					&nbsp;
																				</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th data-column-name="1_use" data-column-header-name="연차 유급 휴가" rowspan="1" class="data-grid-header-th-moveable">
																	<div class="datagrid-header">
																		<span class="column-title" title="사용 일수">사용 일수</span>
																	</div>
																	<div class="resizer">
																					&nbsp;
																				</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th data-column-name="1_remain" data-column-header-name="연차 유급 휴가" rowspan="1" class="data-grid-header-th-moveable">
																	<div class="datagrid-header">
																		<span class="column-title" title="잔여 일수">잔여 일수</span>
																	</div>
																	<div class="resizer">
																					&nbsp;
																				</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th data-column-name="2_give" data-column-header-name="경조 휴가" rowspan="1" class="data-grid-header-th-moveable">
																	<div class="datagrid-header">
																		<span class="column-title" title="부여 일수">부여 일수</span>
																	</div>
																	<div class="resizer">
																					&nbsp;
																				</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th data-column-name="2_use" data-column-header-name="경조 휴가" rowspan="1" class="data-grid-header-th-moveable">
																	<div class="datagrid-header">
																		<span class="column-title" title="사용 일수">사용 일수</span>
																	</div>
																	<div class="resizer">
																					&nbsp;
																				</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th data-column-name="2_remain" data-column-header-name="경조 휴가" rowspan="1" class="data-grid-header-th-moveable">
																	<div class="datagrid-header">
																		<span class="column-title" title="잔여 일수">잔여 일수</span>
																	</div>
																	<div class="resizer">
																					&nbsp;
																				</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th data-column-name="3_give" data-column-header-name="보상 휴가" rowspan="1" class="data-grid-header-th-moveable">
																	<div class="datagrid-header">
																		<span class="column-title" title="부여 일수">부여 일수</span>
																	</div>
																	<div class="resizer">
																					&nbsp;
																				</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th data-column-name="3_use" data-column-header-name="보상 휴가" rowspan="1" class="data-grid-header-th-moveable">
																	<div class="datagrid-header">
																		<span class="column-title" title="사용 일수">사용 일수</span>
																	</div>
																	<div class="resizer">
																					&nbsp;
																				</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th data-column-name="3_remain" data-column-header-name="보상 휴가" rowspan="1" class="data-grid-header-th-moveable">
																	<div class="datagrid-header">
																		<span class="column-title" title="잔여 일수">잔여 일수</span>
																	</div>
																	<div class="resizer">
																					&nbsp;
																				</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th data-column-name="4_give" data-column-header-name="보건 휴가" rowspan="1" class="data-grid-header-th-moveable">
																	<div class="datagrid-header">
																		<span class="column-title" title="부여 일수">부여 일수</span>
																	</div>
																	<div class="resizer">
																					&nbsp;
																				</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th data-column-name="4_use" data-column-header-name="보건 휴가" rowspan="1" class="data-grid-header-th-moveable">
																	<div class="datagrid-header">
																		<span class="column-title" title="사용 일수">사용 일수</span>
																	</div>
																	<div class="resizer">
																					&nbsp;
																				</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th data-column-name="4_remain" data-column-header-name="보건 휴가" rowspan="1" class="data-grid-header-th-moveable">
																	<div class="datagrid-header">
																		<span class="column-title" title="잔여 일수">잔여 일수</span>
																	</div>
																	<div class="resizer">
																					&nbsp;
																				</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th data-column-name="5_give" data-column-header-name="병가" rowspan="1" class="data-grid-header-th-moveable">
																	<div class="datagrid-header">
																		<span class="column-title" title="부여 일수">부여 일수</span>
																	</div>
																	<div class="resizer">
																					&nbsp;
																				</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th data-column-name="5_use" data-column-header-name="병가" rowspan="1" class="data-grid-header-th-moveable">
																	<div class="datagrid-header">
																		<span class="column-title" title="사용 일수">사용 일수</span>
																	</div>
																	<div class="resizer">
																					&nbsp;
																				</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th data-column-name="5_remain" data-column-header-name="병가" rowspan="1" class="data-grid-header-th-moveable">
																	<div class="datagrid-header">
																		<span class="column-title" title="잔여 일수">잔여 일수</span>
																	</div>
																	<div class="resizer">
																					&nbsp;
																				</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th data-column-name="6_give" data-column-header-name="공가" rowspan="1" class="data-grid-header-th-moveable">
																	<div class="datagrid-header">
																		<span class="column-title" title="부여 일수">부여 일수</span>
																	</div>
																	<div class="resizer">
																					&nbsp;
																				</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th data-column-name="6_use" data-column-header-name="공가" rowspan="1" class="data-grid-header-th-moveable">
																	<div class="datagrid-header">
																		<span class="column-title" title="사용 일수">사용 일수</span>
																	</div>
																	<div class="resizer">
																					&nbsp;
																				</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
																<th data-column-name="6_remain" data-column-header-name="공가" rowspan="1" class="data-grid-header-th-moveable">
																	<div class="datagrid-header">
																		<span class="column-title" title="잔여 일수">잔여 일수</span>
																	</div>
																	<div class="resizer">
																					&nbsp;
																				</div>
																</th>
																<!--  -->
																<!--  -->
																<!--  -->
																<!--  -->
															</tr>
														</thead>
													</table>
												</div>
												
												<!-- 값이 들어가는 연결되는 테이블 -->
												<div class="grid-body-table">
													<table class="grid-table">
														<colgroup>
															<col width="150">
															<col width="150">
															<col width="150">
															<col width="150">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
															<col width="100">
														</colgroup>
														<tbody class="placeholders">
															<!--  -->
														</tbody>
														<!-- 회원들의 휴가 컬럼갑이 들어오고 등록되는 공간 -->
														<tbody class="grid-rows-table">
															<c:forEach var="UserClient_vo" items="${user_list}">
																<tr class="group-header-row">
																	<td>
																		<p><c:out value="${UserClient_vo.user_name}" /></p>
																	</td>
																	<td>
																		<p><c:out value="${UserClient_vo.job_id }"/></p>
																	</td>
																	<td>
																		<p><c:out value="${UserClient_vo.user_join_date }"/></p>
																	</td>
																	<td>
																		<p><c:out value="${UserClient_vo.user_id }"/></p>
																	</td>
																</tr>
															</c:forEach>
															
															
														</tbody>
														<!-- 회원들의 휴가 컬럼갑이 들어오고 등록되는 공간 -->
													</table>
												</div>
												
												<!-- 값이 들어가는 연결되는 테이블 -->
												<!--  -->
												<!--  -->
												
												<!-- 보류 확인중  -->
												<div class="loader-wrapper" style="top: calc(1px + 25%); display:none;">
												
												</div>
												<!-- 보류 확인중 -->
											</div>
											<nav class="datagrid-pagenation">
												<div>
													<nav role="navigation" aria-label="pagination" class="pagination">
														<ul class="pagination-list">
															<li>
																<a disabled="disabled" class="pagination-link">
																	<i class="fa fa-angle-left">
																	
																	</i>
																</a>
															</li>
															<li>
																<a class="pagination-link-current">
																	1
																</a>
															</li>
															<li>
																<a disabled="disabled" class="pagination-link">
																	<i class="fa fa-angle-right">
																	
																	</i>
																</a>
															</li>
														</ul>
													</nav>
												</div>
												<div class="pagenation-perpage">
													<div class="select">
														<select>
															<!--  -->
															<option value="10">
																		10
																		</option>
															<option value="50">
																		50
																		</option>	
															<option value="100">
																		100
																		</option>					
														</select>
													</div>
												</div>
											</nav>
										</div>
										
										<!-- 휴가 부여 및 차감 모달창  -->
										<form action="#" class="form-vacation-add-minus-modal" style="display:none;">
											<div class="modal-very-active-card">
												<div class="modal-background"></div>
												<div class="modal-content-wrapper-card" style="max-height:887px;">
													<header class="modal-card-head-flex-row">
														<p title="휴가 부여 및 차감" class="modal-card-title">휴가 부여 및 차감</p>
														<button type="button" class="delete-modal-column-fixed">
														
														</button>
														<object style="display: block; position: absolute; top: 0; left: 0; height: 100%;
    													width: 100%; overflow: hidden; pointer-events: none; z-index: -1;" type="tex/html" data="about:blank">
															#document
																<html>
																	<head></head>
																	<body></body>
																</html>
														</object>
													</header>
													<!-- 휴가부여및 차감 내역 설정 -->
													<section class="modal-card-body-paddingless" style="max-height: calc(754px);">
														<div class="app-remote-contents-column">
															<!--  -->
															<!--  -->
															<div class="app-card-section-item-props">
																<section class="app-subheader-block">
																	<div class="sub-header-text">1. 휴가 부여 및 차감 내역 설정</div>
																	<p>휴가일수 부여 및 차감할 휴가 종류 등을 선택합니다. 반드시 휴가 부여 및 차감 사유를 입력하여야 합니다.</p>
																</section>
																<div class="flex-row-bottom-twice">
																	<span class="flex-column-fixed">내역 설정</span>
																	<span class="select-flex-column-fixed">
																		<select>
																			<option value="1">부여</option>
																			<option value="2">차감</option>
																		</select>
																		
																	</span>
																	<span class="select-flex-column-fixed">
																		<select>
																			<option value="">휴가 목록</option>
																			<option value="">연차 유급 휴가</option>
																			<option value="">경조 휴가</option>
																			<option value="">보상 휴가</option>
																			<option value="">보건 휴가</option>
																			<option value="">병가</option>
																			<option value="">공가</option>
																		</select>
																		
																	</span>
																</div>
																<div class="flex-row-bottom-twice">
																	<span class="flex-column-fixed">
																					부여일
																				</span>
																	<div class="flex-column-fixed">
																		<div class="field-addons-marginless">
																			<p class="control-expanded">
																				<div class="dateinput">
																					<input type="text" placeholder="yyyy-mm-dd" class="input">
																				</div>
																			</p>
																			<p class="control">
																				<a class="button-static">
																					<span class="icon-small">
																						<i class="fa fa-calendar">
																						
																						</i>
																					</span>
																				</a>
																			</p>
																		</div>	
																	</div>
																	<div class="flex-column">
																		<div class="app-vacation-count-input">
																			<div class="flex-column-fixed-narrow">
																				<input type="text" class="input-small">
																			</div>
																			<div class="flex-column-fixed-label-text">
																				<span>일</span>
																			</div>
																			<div class="flex-column-fixed-narrow">
																				<span class="select-small">
																					<select>
																						<!--  -->
																						<option value="0">0</option>
																						<option value="1">1</option>
																						<option value="2">2</option>
																						<option value="3">3</option>
																						<option value="4">4</option>
																						<option value="5">5</option>
																						<option value="6">6</option>
																						<option value="7">7</option>
																					</select>
																					
																				</span>
																			</div>
																			<div class="flex-column-fixed-label-text">
																				<span>시간 으로 지정</span>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="flex-row-bottom-twice">
																	<span class="flex-column-fixed">사유 입력</span>
																	<input placeholder="부여 및 차감 사유 (필수입력)" class="input">
																</div>
															</div>
															<!-- 휴가부여및 차감 내역 설정 -->
															
															<!--  -->
															
															<!-- 휴가부여및 차감 대상자 설정 -->
															<div class="app-card-section-item-column-props">
																<section class="app-subheader-block-props-fixed">
																	<div class="sub-header-text">2. 휴가 부여 및 차감 대상자 설정</div>
																	<p>휴가일수 부여 및 차감의 대상자를 설정합니다</p>
																</section>
																<div class="flex-props-full-cut-dependency">
																	<div class="columns-marginless-full-width-height">
																		<div class="column-paddingless">
																			<div class="flex-props-fixed-toolbar">
																							조직도
																						</div>
																			<div class="pretty-scroll-flex-props" data-ps-id="" style="max-width:100%; max-height:100%;">
																				<div class="pretty-scroll-wrapper" style="position:relative;">
																					<div class="app-remote-contents" style="padding:15px;">
																						<!--  -->
																						<!--  -->
																						<div>
																							<ul class="cool-tree">
																								<li data-key="" rank="0" class="tree-item-root">
																									<div class="cool-tree-item">
																										<!--  -->
																										<div class="list-fold-icon-small">
																											<i class="fa fa-chevron-down">
																											
																											</i>
																										</div>
																										<div class="item-text">
																											<!--  -->
																											<div class="item-name">
																													BatterFlow
																											</div>
																										</div>
																										<!--  -->
																									</div>
																									<!-- 조직도 데이터 들어가는곳 (왼쪽) -->
																									<ul data-parent-key="" class="tree-list">
																										<li data-key="" pkey="" rank="0">
																											<div class="cool-tree-item">
																												<!--  -->
																												<!--  -->
																												<div class="item-text">
																													<!--  -->
																													<div class="item-name">
																														인사과
																													</div>
																												</div>
																												<!--  -->
																											</div>
																											<ul data-parent-key="" class="tree-list"></ul>
																										</li>
																									</ul>
																									<!-- 조직도 데이터 들어가는곳 (왼쪽)-->
																								</li>
																							</ul>
																							<!--  -->
																						</div>
																					</div>
																					<object style="display: block; position: absolute; top: 0; left: 0; height: 100%;
    																				width: 100%; overflow: hidden; pointer-events: none; z-index: -1;" type="text/html" data="about/blank">
																						#document
																							<html>
																								<head></head>
																								<body></body>
																							</html>
																					</object>
																				</div>
																				<div class="scrollbar-x-rail" style="left:0px; bottom:0px;">
																					<div class="scrollbar-x" tabindex="0" style="left:0px; width:0px;"></div>
																				</div>
																				<div class="scrollbar-y-rail" style="top:0px; right:0px;">
																					<div class="scrollbar-y" tabindex="0" style="top:0px; height:0px;"></div>
																				</div>
																			</div>
																		</div>
																		<!-- 조직원 데이터 들어가는곳(오른쪽) -->
																		<div class="column-paddingless-flex-display" style="overflow: hidden">
																			<div class="flex-props-fixed-toolbar">
																				조직원
																			</div>
																			<div class="app-member-search-list-new" style="padding:15px;">
																				<div class="field-addons-props-fixed">
																					<p class="control-expanded">
																						<input type="text" placeholder="이름, 직위/직책, 부서 검색" class="input">
																					</p>
																					<p class="control-flex-props-fixed">
																						<a class="button-primary">검색</a>
																					</p>
																				</div>
																				<!-- 조직원 데이터 내부 -->
																				<div class="flex-props-full-fit-parent">
																					<div class="outer-pretty-scroll" data-ps-id="" style="max-width: calc(100% - 15px + 15px); max-height: 100%; width: calc(100% - 15px + 15px);">
																						<div class="pretty-scroll-wrapper" style="position:relative">
																							<div class="inner-wrapper" style="padding-right:15px;">
																								<div class="app-selectable-member-list">
																									<ul class="cool-list">
																										<!-- 조직원 데이터내부 값  -->
																										<li data-key="" class="list-item">
																											<div class="cool-item">
																												<!--  -->
																												<div class="item-text">
																													<div class="item-row-flex-row">
																														<div class="avatar-wrapper-column">
																															<div aria-hidden="true" class="vue-avatar-wrapper" style="display: flex; width: 26px; height: 26px;
    																														border-radius: 50%; font: 10px / 26px Helvetica, Arial, sans-serif; align-items: center; justify-content: center;
    																														text-align: center; user-select: none; background-color: rgb(204, 204, 204); color: rgb(255, 255, 255);">
																																<!--  -->
																																<span>박</span>
																															</div>
																														</div>
																														<div class="flex-column">
																															<span class="full-ellipsis">박재서(BatterFlow)</span>
																														</div>
																														<div class="flex-column-fixed">
																															<!--  -->
																														</div>
																													</div>
																												</div>
																												<!--  -->
																											</div>
																										</li>
																										<!-- 조직원 데이터내부 값  -->
																									</ul>
																									<div>
																										<!--  -->
																									</div>
																								</div>
																								<div class="app-infinite-scroll">
																									<div data-v-644ea9c9 class="infinite-loading-container">
																									
																									</div>
																								</div>
																							</div>
																							<object style="display: block; position: absolute; top: 0; left: 0; height: 100%;
    																						width: 100%; overflow: hidden; pointer-events: none; z-index: -1;" type="text/html" data="about:blank">
																								#document
																									<html>
																										<head></head>
																										<body></body>
																									</html>
																							</object>
																						</div>
																						<div class="scrollbar-x-rail" style="left:0px; bottom:0px;">
																							<div class="scrollbar-x" tabindex="0" style="left:0px; width:0px;"></div>
																						</div>
																						<div class="scrollbar-y-rail" style="top:0px; right:0px; height:253px;">
																							<div class="scrollbar-y" tabindex="0" style="top:0px; height: 236px;"></div>
																						</div>
																					</div>
																				</div>
																				<div class="flex-props-fixed" style="display:none;">
																					<div class="padding-top">
																						이 페이지의 0명 모두 선택되었습니다.
																					</div>
																				</div>
																				<div class="flex-props-fixed">
																					<div class="padding-top">
																						<div class="flex-row-between">
																							<div class="flex-column-fixed">
																								<!--  -->
																							</div>
																							<div class="flex-column-fixed">
																								<a class="button-primary">전체선택</a>
																							</div>	
																						</div>
																					</div>
																				</div>
																				<!-- 조직원 데이터 내부 -->
																			</div>
																		</div>
																		<!-- 조직원 데이터 들어가는곳(오른쪽)바깥 -->
																	</div>
																</div>
															</div>
															<!-- 휴가부여및 차감 대상자 설정 -->
														</div>
													</section>
													<section class="modal-card-footer-notification" style="position:relative">
														<div>
															<div class="app-form-error">
																<!--  -->
															</div>
															<div class="app-form-error">
																<!--  -->
															</div>
														</div>
														<object style="display: block; position: absolute; top: 0; left: 0; height: 100%;
    													width: 100%; overflow: hidden; pointer-events: none; z-index: -1;" type="tex/html" data="about/blank">
															#document
																<html>
																	<head></head>
																	<body></body>
																</html>
														</object>
													</section>
													<footer class="modal-card-foot">
														<div class="right-align-wrapper">
															<div class="flex-row">
																<button type="submit" class="button-is-primary">실행</button>
																<a class="button">닫기</a>
															</div>
														</div>
														<object style="display: block; position: absolute; top: 0; left: 0; height: 100%;
    													width: 100%; overflow: hidden; pointer-events: none; z-index: -1;" type="text/html" data="about:blank">
															#document
																<html>
																	<head></head>
																	<body></body>
																</html>
														</object>
													</footer>
												</div>
												<!--  -->
											</div>
										</form>
										<!-- 휴가 부여 및 자감 모달창  -->
			
										
										<!-- 휴가 상세 내역 페이지 모달창 -->
										<form action="#" class="app-form-modal-vacation-detail-fluid" style="display:none;" >
											<div  class="modal-active-card-full-modal">
												<div class="modal-background"></div>
												<div class="modal-content-wrapper-modal-card" style="max-height:887px;">
													<header class="modal-card-head-modal-flex-row">
														<p title="휴가 상세 내역" class="modal-card-title-ellipsis-column">휴가상세내역</p>
														<button type="button" class="delete-modal-flex-column-fixed">
														
														</button>
														<object style="display: block; position: absolute; top: 0; left: 0; height: 100%;
    													width: 100%; overflow: hidden; pointer-events: none; z-index: -1;" type="text/html" data="about:blank">
															#document
																<html>
																	<head></head>
																	<body></body>
																</html>
														</object>
													</header>
													<section class="modal-card-body2" style="max-height:calc(754px);">
														<div class="app-remote-contents2">
															<!--  -->
															<!--  -->
															<div class="flex-display-column2"style="">
																<div class="flex-props-fixed-toolbar2">
																	<div class="toolbar-wrapper2">
																		<div class="toolbar-left2">
																			<div class="flex-column-fixed-row-marginless">
																				<div aria-hidden="true" class="vue-avatar-wrapper-column2" style="display: flex; width: 40px; height: 40px; border-radius: 50%; font: 16px / 40px Helvetica, Arial, sans-serif;
    																			align-items: center; justify-content: center; text-align: center; user-select: none; background-color: rgb(204, 204, 204); color: rgb(255, 255, 255);">
																					<!--  -->
																					<span>박</span>
																				</div>
																				<div class="flex-display-column2" style="align-items:start;">
																					<div>
																						<span class="has-text-weight-bold">박재서</span>
																						<span>대표이사</span>
																					</div>
																					<span>jaeble95@gmail.com</span>
																				</div>
																			</div>
																		</div>
																		<div class="toolbar-right2">
																			<div class="flex-column-fixed2" style="margin-right:30px;">
																				<span class="has-text-weight-bold-column-fixed" style="margin-right:5px;">
																					휴가기준:
																				</span>
																				<span>회계연도</span>
																			</div>
																			<div class="flex-column-fixed2" style="margin-right:30px;">
																				<span class="has-text-weight-bold-column-fixed" style="margin-right:5px;">
																					입사일:
																				</span>
																				<span>2020-10-01</span>
																			</div>
																			<div class="flex-column-fixed2">
																				<span class="has-text-weight-bold-column-fixed" style="marignright:5px;">
																					사번:
																				</span>
																				<span>01</span>
																			</div>
																		</div>
																	</div>
																	<!--  -->
																</div>
																<div class="app-toolbar-box-bordered2">
																	<div class="toolbar-wrapper2">
																		<div class="toolbar-left2">
																			<div class="flex-display-column-fixed2" style="align-items:start;">
																				<div class="flex-column-fixed-row2">
																					<span class="has-text-weight-bold-column-fixed" style="margin-right:5px;">
																						휴가종류:
																					</span>
																					<div class="flex-column-fixed2">
																						<span class="select">
																							<select>
																								<option value="">전체</option>
																								<option value="">연차 유급 휴가</option>
																								<option value="">경조 휴가</option>
																								<option value="">보상 휴가</option>
																								<option value="">보건 휴가</option>
																								<option value="">병가</option>
																								<option value="">공가</option>
																							</select>
																						</span>
																					</div>
																					<div class="flex-column2">
																						<div class="cool-checkbox-column2" checked="checked">
																							<input type="checkbox" class="checked">
																							<div class="checkbox-inner">
																								<span class="check"></span>
																							</div>
																						</div>
																						<span>사용하지 않는 휴가 종류 포함</span>
																					</div>
																				</div>
																				<div class="flex-column-fixed-row2-flex">
																					<span class="has-text-weight-bold-column-fixed2" style="margon-right:5px;">
																						검색기간:
																					</span>
																					<span class="flex-column2">
																						<div class="daterange-input-app-daterangeinput" start-value="2020-05-08" end-value="2021-05-07">
																							<!--  -->
																							<div class="dateinput-dateinput">
																								<input type="text" placeholder="yyyy-MM-dd" class="input">
																							</div> 
																							<span class="after">
																								<p class="control">
																									<a class="button-is-static">
																										<span class="icon-small2">
																											<i class="fa fa-calendar">
																											
																											</i>
																										</span>
																									</a>
																								</p>
																							</span>
																							<!--  -->
																							<!--  -->
																							<span class="seperator">~</span>
																							<!--  -->
																							<div class="dateinput-dateinput" position="bottom right" aria-label="Use the arrow keys to pick a date">
																								<input type="text" placeholder="yyyy-MM-dd" class="input">
																							</div>
																							<span class="after">
																								<p class="control">
																									<a class="button-is-static">
																										<span class="icon-small2">
																											<i class="fa fa-calendar">
																											
																											</i>
																										</span>
																									</a>
																								</p>
																							</span>
																							<!--  -->
																							<!--  -->
																						</div>
																					</span>
																					<span class="flex-column2">
																						<a class="button-is-primary">
																							검색
																						</a>
																					</span>
																				</div>
																			</div>
																		</div>
																		<div class="toolbar-right2">
																			<a class="flex-column-button-primary-outlined2">
																				<span class="icon-is-small2">
																					<i class="i-app-excel">
																						::before
																					</i>
																				</span>
																			</a>
																		</div>
																	</div>
																	<!--  -->
																</div>
																<!-- 휴가일수부여내역 -->
																<div class="app-common-vacation-history-list2">
																	<div class="columns-grids-marginless-props">
																		<div class="column-half-paddingless-left">
																			<div class="app-datagrid-theme" toolbarcomponent="[object Object]" presetcomponent="[object Object]" pagenationcomponent="[object Object]" lang="ko" height="100%"
																			no-paging="true" rows="[object Object]" selected="selected">
																				<div class="datagrid-toolbar">
																					<div class="toolbar-left3">
																						<span>휴가일수 부여 내역</span>
																					</div>
																					<div class="toolbar-right3">
																						<div class="datagrid-column-toggle-dropdown">
																							<div class="dropdown-trigger">
																								<a class="button-is-outlined-primary">
																									<span class="icon-is-small">
																										<i class="fa fa-list-ul">
																										
																										</i>
																									</span>
																								</a>
																							</div>
																							<div class="dropdown-contents" x-placement="bottom-end" style="display: none;
    																						position: fixed; will-change: top, left; top: 339px; left: 453px;">
																								<div class="box" style="width:160px;">
																									<div class="flex-row3">
																										<div class="flex-column-fixed2">
																											<input type="radio">
																										</div>
																										<div class="flex-column2">
																											그룹 없음
																										</div>
																									</div>
																									<div class="flex-row2">
																										<div class="flex-column-fixed2">
																											<input type="radio" value="name">
																										</div>
																										<div class="flex-column2">
																											휴가 종류
																										</div>
																									</div>
																									<div class="flex-row2">
																										<div class="flex-column-fixed2">
																											<input type="radio" value="reason">
																										</div>
																										<div class="flex-column2">
																											부여 사유
																										</div>
																									</div>
																								</div>
																								<object style="display: block; position: absolute; top: 0; left: 0; height: 100%;
    																							width: 100%; overflow: hidden; pointer-events: none; z-index: -1;" type="text/html" data="about:blank">
																								
																								</object>
																							</div>
																						</div>
																						<a class="button-primary-outlined">
																							<span class="icon-small">
																								<i class="fa fa-plus">
																								
																								</i>
																							</span>
																						</a>
																						<a class="button-primary-outlined">
																							<span class="icon-small">
																								<i class="fa fa-trash">
																								
																								</i>
																							</span>
																						</a>
																					</div>
																				</div>
																				<!--  -->
																				<!-- 휴가일수부여내역 내부 데이터 값 들어오는곳 -->
																				<div class="grid-wrapper" style="width:100%; heifht:100%;" >
																					<div class="grid-header-table" style="margin-left:0px; padding-right:10px;">
																						<table class="grid-table">
																							<colgroup>
																								<col width="43px">
																								<col width="200px">
																								<col width="178px">
																								<col width="195px">
																								<col width="260px">
																								<col width="80px">
																							</colgroup>
																							<thead>
																								<tr data-row-index="1">
																									<th data-column-name="preset-checkbox" rowspan="2" class="datagrid-header-th">
																										<div class="datagrid-header-checkbox" style="padding:0px; display: flex;">
																											<div class="checkbox" style="width:22px; height:22px;">
																												<input type="checkbox" class="" style="width:22px; height:22px;">
																												<div class="checkbox-inner" style="border-color:rgb(33,150,243);">
																													<span class="check" style="height:12px; left:7px;"></span>
																												</div>
																											</div>
																										</div>
																										<!--  -->
																									</th>
																									<th data-column-name="name" rowspan="2" class="datagrid-header-th">
																										<div class="datagrid-header-sortable">
																											<span class="column-title" title="휴가 종류">휴가 종류</span>
																										</div>
																										<div class="resizer">
																											&nbsp;
																										</div>
																									</th>
																									<th data-column-name="giveDate" rowspan="2" class="datagrid-header-th">
																										<div class="datagrid-header-sortable">
																											<span class="column-title" title="부여일">부여일</span>
																										</div>
																										<div class="resizer">
																											&nbsp;
																										</div>
																									</th>
																									<th data-column-name="giveCount" rowspan="2" class="datagrid-header-th">
																										<div class="datagrid-header-sortable">
																											<span class="column-title" title="부여 휴가 일수">부여 휴가 일수</span>
																										</div>
																										<div class="resizer">
																											&nbsp;
																										</div>
																									</th>
																									<th data-column-name="reason" rowspan="2" class="datagrid-header-th">
																										<div class="datagrid-header-sortable">
																											<span class="column-title" title="부여 사유">부여 사유</span>
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
																								<tr data-row-index=2>
																									<!--  -->
																									<!--  -->
																									<!--  -->
																								</tr>
																							</thead>
																						</table>
																					</div>
																					<!-- 휴가일수부여내역 내부안에 데이터 값 -->
																					<div class="grid-body-table">
																						<table class="grid-table">
																							<colgroup>
																								<col width="43px">
																								<col width="200px">
																								<col width="178px">
																								<col width="195px">
																								<col width="260px">
																								<col width="80px">
																							</colgroup>
																							<tbody class="placeholders">
																								<!--  -->
																							</tbody>
																							<tbody class="grid-rows-table2">
																								<tr class="group-header-row" style="display:none;">
																									<td colspan="6">
																										<div class="group-header-cell">
																											<span class="fold-group">`
																												<i aria-hidden="true" class="fa fa-caret-down"></i>
																											</span>
																											<span>undefined</span>
																										</div>
																									</td>
																								</tr>
																								<tr class="group-row-datagrid-row" data-row-key="">
																									<td class="datagrid-cell-wrapper">
																										<div class="datagrid-cell-checkbox" style="text-align:center; width:100%; display:flex;">
																											<div class="checkbox" style="width:22px; height:22px;">
																												<input type="checkbox" class="" style="width:22px; height:22px;">
																												<div class="checkbox-inner" style="border-color:rgb(33,150,243 );">
																													<span class="check" style="height:12px; left:7px;"></span>
																												</div>
																											</div>
																										</div>
																									</td>
																									<td class="datagrid-cell-wrapper">
																										<div class="datagrid-cell-default" title="연차 유급 휴가" style="text-align:center;">
																											연차 유급 휴가
																										</div>
																									</td>
																									<td class="datagrid-cell-wrapper">
																										<div class="datagrid-cell-default" title="2020-11-01" style="text-align:center;">
																											2020-11-01
																										</div>
																									</td>
																									<td class="datagrid-cell-wrapper">
																										<div class="datagrid-cell-custom-giveCount" title="2020-11-01" style="text-align:center;">
																											1일 0시간
																										</div>
																									</td>
																									<td class="datagrid-cell-wrapper">
																										<div class="datagrid-cell-default" title="2 개월 차 연차유급휴가 1일 부여정책" style="text-align:center;">
																											2 개월 차 연차유급휴가 1일 부여정책
																										</div>
																									</td>
																									<td class="datagrid-cell-wrapper">
																										<div class="datagrid-cell-action" style="text-align:center;">
																											<a class="grid-link-edit-row-button">
																												<i class="fa fa-pencil">
																												
																												</i>
																											</a>
																										</div>
																									</td>
																								</tr>
																							</tbody>
																						</table>
																					</div>
																					<div class="loader-wrapper2" style="display:none; top:calc(1px +25%);">
																						<div style="padding:20px;">
																							<div class="loader-app-loader2" slot="loader">
																								<div class="v-spinner2">
																									<div class="v-pulse-v-pules1" style="background-color: rgb(181, 181, 181); width: 10px; height: 10px;
    																								margin: 2px; border-radius: 100%; display: inline-block; animation-name: v-pulseStretchDelay; animation-duration: 0.75s;
    																								animation-iteration-count: infinite; animation-timing-function: cubic-bezier(0.2, 0.68, 0.18, 1.08);
																									animation-fill-mode: both; animation-delay: 0.12s;">
																									</div>
																									<div class="v-pulse-v-pules2" style="background-color: rgb(181, 181, 181); width: 10px; height: 10px;
    																								margin: 2px; border-radius: 100%; display: inline-block; animation-name: v-pulseStretchDelay; animation-duration: 0.75s;
    																								animation-iteration-count: infinite; animation-timing-function: cubic-bezier(0.2, 0.68, 0.18, 1.08);
																									animation-fill-mode: both; animation-delay: 0.12s;">
																									</div>
																									<div class="v-pulse-v-pules3" style="background-color: rgb(181, 181, 181); width: 10px; height: 10px;
    																								margin: 2px; border-radius: 100%; display: inline-block; animation-name: v-pulseStretchDelay; animation-duration: 0.75s;
    																								animation-iteration-count: infinite; animation-timing-function: cubic-bezier(0.2, 0.68, 0.18, 1.08);
																									animation-fill-mode: both; animation-delay: 0.12s;">
																									</div>
																								</div>
																							</div>
																						</div>
																					</div>
																					<!-- 휴가일수부여내역 내부안에 데이터 값 -->
																				</div>
																				<!-- 휴가일수부여내역 내부 데이터 값 들어오는곳 -->
																				<!--  -->
																				<!--  -->
																				<div class="display:none;">
																					<!--  -->
																					<!--  -->
																					<div class="datagrid-column">
																						<!--  -->
																					</div>
																					<div class="datagrid-column">
																						<!--  -->
																					</div>
																					<div class="datagrid-column">
																						<!--  -->
																					</div>
																					<div class="datagrid-column">
																						<!--  -->
																					</div>
																					<div class="datagrid-column">
																						<!--  -->
																					</div>
																					<div class="datagrid-column">
																						<!--  -->
																					</div>
																				</div>
																			</div>
																		</div>
																		<!-- 휴가일수사용(차감)내역 -->
																		<div class="column-half-paddingless-right">
																			<div class="app-datagrid-theme" toolbarcomponent="[object Object]"
																			presetcomponent="[object Object]" pagenationcomponent="[object Object]"
																			lang="ko" height="100%" no-paging="true" rows selected="selected">
																				<div class="datagrid-toolbar2">
																					<div class="toolbar-left2">
																						<span>휴가일수 사용(차감)내역</span>
																					</div>
																					<div class="toolbar-right2">
																						<div class="datagrid-column-toggle-dropdown2">
																							<div class="dropdown-trigger2">
																								<a class="button-outlined-primary"> 
																									<span class="icon-small">
																										<i class="fa fa-list-ul">
																										
																										</i>
																									</span>
																								</a>	
																							</div>
																							<div class="dropdown-contents" x-placement="bottom-end" style="display: none;
    																						position: fixed; will-change: top, left; top: 339px; left: 961px;">
																								<div class="box" style="width:160px;">
																									<div class="flex-row2">
																										<div class="flex-column-fixed2">
																											<input type="radio">
																										</div>
																										<div class="flex-column2">
																											그룹 없음
																										</div>
																									</div>
																									<div class="flex-row2">
																										<div class="flex-column-fixed2">
																											<input type="radio" value="groupName">
																										</div>
																										<div class="flex-column2">
																											휴가 종류
																										</div>
																									</div>
																									<div class="flex-row2">
																										<div class="flex-column-fixed2">
																											<input type="radio" value="reason">
																										</div>
																										<div class="flex-column">
																											휴가 사유
																										</div>
																									</div>
																								</div>
																								<object style="display: block; position: absolute; top: 0; left: 0;
    																							height: 100%; width: 100%; overflow: hidden; pointer-events: none; z-index: -1;"
    																							type="text/html" data="about:blank">
																								</object>
																							</div>
																						</div>
																						<a class="button-primary-outlined2">
																							<span class="icon-small2">
																								<i class="fa fa-plus">
																								
																								</i>
																							</span>
																						</a>
																						<a class="button-primary-outlined">
																							<span class="icon-small2">
																								<i class="fa fa-trash">
																								
																								</i>
																							</span>
																						</a>
																					</div>
																				</div>
																				<!--  -->
																				<!-- 휴가일수사용(차감)내역 내부 데이터값 들어오는곳 -->
																				<div class="grid-wrapper2" style="width:100%; height:100%;">
																					<div class="grid-header-table2" style="magin-left:0px; padding-right:10px;">
																						<table class="grid-table2">
																							<colgroup>
																								<col width="43px">
																								<col width="130px">
																								<col width="130px">
																								<col width="200px">
																								<col width="195px">
																								<col width="110px">
																								<col width="80px">
																							</colgroup>
																							<thead>
																								<tr data-row-index="1">
																									<th data-column-name="preset-checkbox" rowspan="2" class="datagrid-header-th2">
																										<div class="datagrid-header-checkbox" style="padding:0px; display:flex;">
																											<div class="checkbox" style="width:22px; height:22px;">
																												<input type="checkbox" class="" style="width:22px; height:22px;">
																												<div class="checkbox-inner" style="border-color:rgb(33, 150, 243)">
																													<span class="check" style="height:12px; left:7px;"></span>
																												</div>
																											</div>
																										</div>
																										<!--  -->
																									</th>
																									<th data-column-name="groupName" rowspan="2" class="datagrid-header-th2">
																										<div class="datagrid-header-sortable2">
																											<span class="column-title" title="휴가 종류">휴가 종류</span>
																										</div>
																										<div class="resizer">
																											&nbsp;
																										</div>
																									</th>
																									<th data-column-name="itemName" rowspan="2" class="datagrid-header-th2">
																										<div class="datagrid-header-sortable2">
																											<span class="column-title" title="휴가 세부 종류">휴가 세부 종류</span>
																										</div>
																										<div class="resizer">
																											&nbsp;
																										</div>
																									</th>
																									<th data-column-name="vacationRange" rowspan="2" class="datagrid-header-th2">
																										<div class="datagrid-header-sortable2">
																											<span class="column-title" title="휴가 기간">휴가 기간</span>
																										</div>
																										<div class="resizer">
																											&nbsp;
																										</div>
																									</th>
																									<th data-column-name="useCount" rowspan="2" class="datagrid-header-th2">
																										<div class="datagrid-header-sortable2">
																											<span class="column-title" title="휴가 일수">휴가 일수</span>
																										</div>
																										<div class="resizer">
																											&nbsp;
																										</div>
																									</th>
																									<th data-column-name="reason" rowspan="2" class="datagrid-header-th2">
																										<div class="datagrid-header-sortable2">
																											<span class="column-title" title="휴가 사유">휴가 사유</span>
																										</div>
																										<div class="resizer">
																											&nbsp;
																										</div>
																									</th>
																									<th data-column-name="preset-action" rowspan="2" class="datagrid-header-th2">
																										<div class="datagrid-header-sortable2">
																											<span class="column-title"></span>
																										</div>
																										<!--  -->				
																									</th>
																								</tr>
																								<tr data-row-index="2">
																									<!--  -->
																									<!--  -->
																									<!--  -->
																								</tr>
																							</thead>
																						</table>
																					</div>
																					<div class="grid-body-table2">
																						<table class="grid-table2">
																							<colgroup>
																								<col width="43px">
																								<col width="130px">
																								<col width="130px">
																								<col width="200px">
																								<col width="195px">
																								<col width="110px">
																								<col width="80px">
																							</colgroup>
																							<tbody class="placeholders">
																								<tr>
																									<td colspan="7" style="text-align:center;">
																										<div class="placeholder-cell">
																											데이터가 없습니다.
																										</div>
																									</td>
																								</tr>
																							</tbody>	
																						</table>
																					</div>
																					<div class="loader-wrapper2" style="display:none; top:calc(1px+25%);">
																						<div style="padding:20px">
																							<div class="loader-app-loader" slot="loader">
																								<div class="v-spinner">
																									<div class="v-pulse-v-pulse1" style="background-color: rgb(181, 181, 181); width: 10px; height: 10px; margin: 2px;
    																								border-radius: 100%; display: inline-block; animation-name: v-pulseStretchDelay; animation-duration: 0.75s;
    																								animation-iteration-count: infinite; animation-timing-function: cubic-bezier(0.2, 0.68, 0.18, 1.08);
    																								animation-fill-mode: both; animation-delay: 0.12s;">
																									</div>
																									<div class="v-pulse-v-pulse2" style="background-color: rgb(181, 181, 181); width: 10px; height: 10px; margin: 2px;
    																								border-radius: 100%; display: inline-block; animation-name: v-pulseStretchDelay; animation-duration: 0.75s;
    																								animation-iteration-count: infinite; animation-timing-function: cubic-bezier(0.2, 0.68, 0.18, 1.08);
    																								animation-fill-mode: both; animation-delay: 0.12s;">
																									</div>
																									<div class="v-pulse-v-pulse3" style="background-color: rgb(181, 181, 181); width: 10px; height: 10px; margin: 2px;
    																								border-radius: 100%; display: inline-block; animation-name: v-pulseStretchDelay; animation-duration: 0.75s;
    																								animation-iteration-count: infinite; animation-timing-function: cubic-bezier(0.2, 0.68, 0.18, 1.08);
    																								animation-fill-mode: both; animation-delay: 0.12s;">
																									</div>
																								</div>
																							</div>	
																						</div>
																					</div>
																					<!--  -->
																					<!--  -->
																					<div style="display:none;">
																						<!--  -->
																						<!--  -->
																						<div class="datagrid-column">
																							<!--  -->
																						</div>
																						<div class="datagrid-column">
																							<!--  -->
																						</div>
																						<div class="datagrid-column">
																							<!--  -->
																						</div>
																						<div class="datagrid-column">
																							<!--  -->
																						</div>
																						<div class="datagrid-column">
																							<!--  -->
																						</div>
																						<div class="datagrid-column">
																							<!--  -->
																						</div>
																						<div class="datagrid-column">
																							<!--  -->
																						</div>
																					</div>
																				</div>
																				<!-- 휴가일수사용(차감)내역 내부 데이터값 들어오는곳 -->
																				<!--  -->
																				<!--  -->
																			</div>
																		</div>
																		<!-- 휴가일수사용(차감)내역 -->
																		
																		<!--  -->
																		<div class="grid-footer-text-centered-flex-props">
																			<div class="column-marginless2">
																				<div class="column2">
																					휴가 부여일수 합계
																				</div>
																				<div class="column-has-text-info">
																					1일 0시간
																				</div>
																				<div class="column2">
																					휴가 사용일수 합계
																				</div>
																				<div class="column-has-text-danger">
																					
																				</div>
																			</div>
																			<div class="columns-marginless2">
																				<div class="column2">
																					휴가 합계
																				</div>
																				<div class="column2">
																					1일 0시간
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<!-- 휴가일수부여내역 -->
															</div>
														</div>
													</section>
													<section class="modal-card-footer-notification2" style="position:relative;">
														<div class="app-form-error">
															<!--  -->
														</div>
														<object style="display: block; position: absolute; top: 0; left: 0;
    													height: 100%; width: 100%; overflow: hidden; pointer-events: none; z-index: -1;"
    													type="text/html" data="about:blank">
															#document
																<html>
																	<head></head>
																	<body></body>
																</html>
														</object>
													</section>
													<footer class="modal-card-foot2">
														<div class="modal-footer2">
															<!--  -->
															<a class="button">닫기</a>
														</div>
														<object style="display: block; position: absolute; top: 0; left: 0; height: 100%;
    													width: 100%; overflow: hidden; pointer-events: none; z-index: -1;" type="text/html" data="about:blank">
															#document
																<html>
																	<head></head>
																	<body></body>
																</html>
														</object>
													</footer>
												</div>
												<!--  -->
											</div>
										</form>
										<!-- 휴가 상세 내역 페이지 모달창 -->
										
										<!-- 휴가정보 엑셀 다운로드 모달창 -->
										<form action="#" class="app-form-modal3" id="app-vacation-escel-modal" style="display:none;">
											<div class="modal-active-card-modal">
												<div class="modal-background"></div>
												<div class="modal-content-wrapper-modal-card" style="max-height:887px;">
													<header class="modal-card-head-modal-flex-row">
														<p title="휴가정보" class="modal-card-title-ellipsis-modal">
															휴가 정보
														</p>
														<button type="button" class="delete-modal-flex-column-fixed">
														
														</button>
														<object style="display: block; position: absolute; top: 0; left: 0; height: 100%;
    													width: 100%; overflow: hidden; pointer-events: none; z-index: -1;" type="text/html" data="about:blank">
															#document
																<html>
																	<head></head>
																	<body></body>
																</html>
														</object>
													</header>
													<section class="modal-card-body-paddingless" style="max-height:calc(754px;)">
														<div class="app-card-section-item">
															<section class="app-subheader-block">
																<div class="sub-header-text">1.휴가 정보 Excel 다운로드</div>
																<p>
																	<div>
																	"휴가내역을 업도르하기 위해서는 [휴가 정보 Excel 다운로드 버튼]을 클릭하여, 다운로드 받은
																	Excel 파일에 휴가 정보를 확인 후 추가 정보를 입력합니다.
																	조직도에 등록된 조직원의 휴가 내역만 입력이 가능하며, 만약 아직 등록하지 않은 조직원이 있다면
																	반드시 먼저 조직원 등록을 해주시기 바랍니다."
																	</div>
																</p>
															</section>
															<section class="app-subheader-block">
																<div class="sub-header-text"></div>
																<p>
																	<div>
																		<div class="flex-row">
																			<div class="cool-checkbox">
																				<input type="checkbox" class="checked">
																				<div class="checkbox-inner">
																					<span class="check"></span>
																				</div>
																			</div>
																			<span class="flex-column-fixed">선택하면</span>
																			<input type="text" placeholder="yyyy" class="input-flex-column-fixed" style="width: 60px;">
																			<span class="flex-column">연도분[휴가정보 Excel]을 다운로드 할 수 있습니다.</span>
																		</div>
																		<div class="flex-row">
																			<div class="cool-checkbox" checked="checked">
																				<input type="checkbox" class="checked">
																				<div class="checkbox-inner">
																					<span class="check"></span>
																				</div>
																			</div>
																			<span class="flex-column">선택하면 [사용하지 않는 휴가 종류]를 포함한[휴가 정보 Excel]을 다운로드 할 수 있습니다. </span>
																		</div>
																	</div>
																</p>
															</section>
															<!-- 휴가정보 엑셀 다운로드 버튼 -->
															<div class="right-align-wrapper">
																<a href="" class="button-primary">
																	휴가 정보 Excel 다운로드
																</a>
															</div>
															<!-- 휴가정보 엑셀 다운로드 버튼 -->
														</div>
														<div class="app-card-section-item">
															<section class="app-subheader-block">
																<div class="sub-header-text">2.휴가 정보 Excel 업로드</div>
																<p>
																	<div>
																		"다운로드 받은 휴가 정보 Excel 양식에 휴가 정보를 추가한 후 [휴가 정보 Excel 업로드] 버튼을
																		클릭하면 휴가 정보가 일괄 설정 됩니다.
																		업로드한 휴가 정보 Excel 파일에 에러가 발생한 경우, 반드시 다시 [휴가 정보 Excel 다운로드]를
																		실행한 후 입력이 진행된 휴가 정보 확인 후 입력되지 않은 휴가 정보만 추가하여 업로드해야 중복
																		입력되지 않습니다."
																	</div>
																</p>
															</section>
															<div class="field-has-addons-marginless">
																<div class="control-expanded">
																	<input disabled="disabled" type="text" class="input">
																</div>
																<div class="control">
																	<input accept=".csv, application.vnd.openxmlformats-officedocument.spreadsheetml.sheet
																	application/vnd.ms-excel" type="file" style="display:none;">
																	<a class="button">
																		<i aria-hidden="true" class="fa fa-folder-open" style="margin-left:2px;">
																		
																		</i>
																	</a>
																</div>
																<button disabled="disabled" type="submit" class="button-primary" style="margin-left: 10px;">
																	휴가 정보 Excel 업로드
																</button>
															</div>
														</div>
													</section>
													<section class="modal-card-footer-notification" style="position: relative;">
														<div class="app-form-error">
															<!--  -->
														</div>
														<div>
															<!--  -->
														</div>
														<object style="display: block; position: absolute; top: 0; left: 0; height: 100%;
    													width: 100%; overflow: hidden; pointer-events: none; z-index: -1;" type="text/html" data="about:blank">
															#document
																<html>
																	<head></head>
																	<body></body>
																</html>
														</object>
													</section>
													<footer class="modal-card-foot">
														<div class='modal-footer'>
															<!--  -->
															<a class="button">닫기</a>
														</div>	
															<object style="display: block; position: absolute; top: 0; left: 0; height: 100%; width: 100%;
    														overflow: hidden; pointer-events: none; z-index: -1;" type="text/html" data="about:blank">
																#document
																	<html>
																		<head></head>
																		<body></body>
																	</html>
															</object>
													</footer>
												</div>
												<!--  -->
											</div>
										</form>
										<!-- 휴가정보 엑셀 다운로드 모달창 -->
									</div>
								</div>	
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script src="http://ajax.googleapis.con/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<script>
		$(document).ready(function(){
			$("").on('', function(){
				
			})
			
		});
	
	
	
	
	
		$(function(){
			$.ajax({
				type: "GET"
				url: "admin/vacationManagement/vacationHistoryManagement"
				data:{
					//들어갈 데이터를 찾아야함 들어갈 목록 리스트 값 (테이블또는div id))
					//이름,직위/직책,입사일 사번 휴가종류(연차,보상,경조,보건,병가,공가)
					
				},
				success: function(){
					
				},
				error: function(){
					
				}
				
			});
		});
	</script>



</body>
</html>