<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑学生资助</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">学生资助管理</li>
                        <li class="breadcrumb-item active">编辑学生资助</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">学生资助信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6 aaaaaa laoshi">
                                        <label>老师</label>
                                        <div>
                                            <select style="width: 450px" id="laoshiSelect" name="laoshiSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 laoshi">
                                        <label>工号</label>
                                        <input style="width: 450px" id="laoshiUuidNumber" name="laoshiUuidNumber" class="form-control"
                                               placeholder="工号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 laoshi">
                                        <label>老师姓名</label>
                                        <input style="width: 450px" id="laoshiName" name="laoshiName" class="form-control"
                                               placeholder="老师姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6 laoshi">
                                        <label>老师手机号</label>
                                        <input style="width: 450px" id="laoshiPhone" name="laoshiPhone" class="form-control"
                                               placeholder="老师手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 laoshi">
                                        <label>老师头像</label>
                                        <img id="laoshiPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6 aaaaaa xuesheng">
                                        <label>学生</label>
                                        <div>
                                            <select style="width: 450px" id="xueshengSelect" name="xueshengSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 xuesheng">
                                        <label>学号</label>
                                        <input style="width: 450px" id="xueshengUuidNumber" name="xueshengUuidNumber" class="form-control"
                                               placeholder="学号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 xuesheng">
                                        <label>学生姓名</label>
                                        <input style="width: 450px" id="xueshengName" name="xueshengName" class="form-control"
                                               placeholder="学生姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6 xuesheng">
                                        <label>学生手机号</label>
                                        <input style="width: 450px" id="xueshengPhone" name="xueshengPhone" class="form-control"
                                               placeholder="学生手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 xuesheng">
                                        <label>学生头像</label>
                                        <img id="xueshengPhotoImg" src="" width="100" height="100">
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="xueshengId" name="xueshengId" type="hidden">
                                <input id="laoshiId" name="laoshiId" type="hidden">
                                    <div class="form-group col-md-6 xueshengzizhuUuidNumberDiv">
                                        <label>资助编号</label>
                                        <input style="width: 450px" id="xueshengzizhuUuidNumber" name="xueshengzizhuUuidNumber" class="form-control"
                                               placeholder="资助编号">
                                    </div>
                                    <div class="form-group col-md-6 xueshengzizhuNameDiv">
                                        <label>学生资助名称</label>
                                        <input style="width: 450px" id="xueshengzizhuName" name="xueshengzizhuName" class="form-control"
                                               placeholder="学生资助名称">
                                    </div>
                                    <div class="form-group col-md-6 xueshengzizhuFileDiv">
                                        <label>相关证明文件</label>
                                        <input name="file" type="file" class="form-control-file" id="xueshengzizhuFileupload">
                                        <label id="xueshengzizhuFileName"></label>
                                        <input name="xueshengzizhuFile" id="xueshengzizhuFile-input" type="hidden">
                                    </div>
                                    <div class="form-group col-md-6 xueshengzizhuTypesDiv">
                                        <label>学生资助类型</label>
                                        <select style="width: 450px" id="xueshengzizhuTypesSelect" name="xueshengzizhuTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6 xueshengzizhuJineDiv">
                                        <label>资助金额</label>
                                        <input style="width: 450px" id="xueshengzizhuJine" name="xueshengzizhuJine" class="form-control"
                                               onchange="xueshengzizhuJineChickValue(this)" placeholder="资助金额">
                                    </div>
                                    <div class="form-group  col-md-6 xueshengzizhuContentDiv">
                                        <label>学生资助详情</label>
                                        <input id="xueshengzizhuContentupload" name="file" type="file">
                                        <script id="xueshengzizhuContentEditor" type="text/plain"
                                                style="width:100%;height:230px;"></script>
                                        <script type = "text/javascript" >
                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                        //相见文档配置属于你自己的编译器
                                        var xueshengzizhuContentUe = UE.getEditor('xueshengzizhuContentEditor', {
                                            toolbars: [
                                                [
                                                    'undo', //撤销
                                                    'bold', //加粗
                                                    'redo', //重做
                                                    'underline', //下划线
                                                    'horizontal', //分隔线
                                                    'inserttitle', //插入标题
                                                    'cleardoc', //清空文档
                                                    'fontfamily', //字体
                                                    'fontsize', //字号
                                                    'paragraph', //段落格式
                                                    'inserttable', //插入表格
                                                    'justifyleft', //居左对齐
                                                    'justifyright', //居右对齐
                                                    'justifycenter', //居中对
                                                    'justifyjustify', //两端对齐
                                                    'forecolor', //字体颜色
                                                    'fullscreen', //全屏
                                                    'edittip ', //编辑提示
                                                    'customstyle', //自定义标题
                                                ]
                                            ]
                                        });
                                        </script>
                                        <input type="hidden" name="xueshengzizhuContent" id="xueshengzizhuContent-input">
                                    </div>
                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "xueshengzizhu";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var xueshengzizhuTypesOptions = [];
    var xueshengzizhuYesnoTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var laoshiOptions = [];
    var xueshengOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

        $('#xueshengzizhuFileupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                document.getElementById('xueshengzizhuFile-input').setAttribute('value', baseUrl + 'file/download?fileName=' + data.result.file);
                document.getElementById('xueshengzizhuFileName').innerHTML = "上传成功!";
            }
        });


        $('#xueshengzizhuContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('xueshengzizhuContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
            if(window.sessionStorage.getItem('role') != '学生'){//当前登录用户不为这个
                if($("#xueshengId") !=null){
                    var xueshengId = $("#xueshengId").val();
                    if(xueshengId == null || xueshengId =='' || xueshengId == 'null'){
                        alert("学生不能为空");
                        return;
                    }
                }
            }
            if(window.sessionStorage.getItem('role') != '老师'){//当前登录用户不为这个
                if($("#laoshiId") !=null){
                    var laoshiId = $("#laoshiId").val();
                    if(laoshiId == null || laoshiId =='' || laoshiId == 'null'){
                        alert("老师不能为空");
                        return;
                    }
                }
            }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';

            }
            httpJson("xueshengzizhu/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addxueshengzizhu');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function xueshengzizhuTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=xueshengzizhu_types", "GET", {}, (res) => {
                if(res.code == 0){
                    xueshengzizhuTypesOptions = res.data.list;
                }
            });
        }
        function xueshengzizhuYesnoTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=xueshengzizhu_yesno_types", "GET", {}, (res) => {
                if(res.code == 0){
                    xueshengzizhuYesnoTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->
        function laoshiSelect() {
            //填充下拉框选项
            http("laoshi/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    laoshiOptions = res.data.list;
                }
            });
        }

        function laoshiSelectOne(id) {
            http("laoshi/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                laoshiShowImg();
                laoshiShowVideo();
                laoshiDataBind();
            }
        });
        }
        function xueshengSelect() {
            //填充下拉框选项
            http("xuesheng/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    xueshengOptions = res.data.list;
                }
            });
        }

        function xueshengSelectOne(id) {
            http("xuesheng/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                xueshengShowImg();
                xueshengShowVideo();
                xueshengDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationXueshengzizhutypesSelect(){
            var xueshengzizhuTypesSelect = document.getElementById('xueshengzizhuTypesSelect');
            if(xueshengzizhuTypesSelect != null && xueshengzizhuTypesOptions != null  && xueshengzizhuTypesOptions.length > 0 ){
                for (var i = 0; i < xueshengzizhuTypesOptions.length; i++) {
                    xueshengzizhuTypesSelect.add(new Option(xueshengzizhuTypesOptions[i].indexName,xueshengzizhuTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationXueshengzizhuyesnotypesSelect(){
            var xueshengzizhuYesnoTypesSelect = document.getElementById('xueshengzizhuYesnoTypesSelect');
            if(xueshengzizhuYesnoTypesSelect != null && xueshengzizhuYesnoTypesOptions != null  && xueshengzizhuYesnoTypesOptions.length > 0 ){
                for (var i = 0; i < xueshengzizhuYesnoTypesOptions.length; i++) {
                    xueshengzizhuYesnoTypesSelect.add(new Option(xueshengzizhuYesnoTypesOptions[i].indexName,xueshengzizhuYesnoTypesOptions[i].codeIndex));
                }
            }
        }

        function initializationlaoshiSelect() {
            var laoshiSelect = document.getElementById('laoshiSelect');
            if(laoshiSelect != null && laoshiOptions != null  && laoshiOptions.length > 0 ) {
                for (var i = 0; i < laoshiOptions.length; i++) {
                        laoshiSelect.add(new Option(laoshiOptions[i].laoshiName, laoshiOptions[i].id));
                }

                $("#laoshiSelect").change(function(e) {
                        laoshiSelectOne(e.target.value);
                });
            }

        }

        function initializationxueshengSelect() {
            var xueshengSelect = document.getElementById('xueshengSelect');
            if(xueshengSelect != null && xueshengOptions != null  && xueshengOptions.length > 0 ) {
                for (var i = 0; i < xueshengOptions.length; i++) {
                        xueshengSelect.add(new Option(xueshengOptions[i].xueshengName, xueshengOptions[i].id));
                }

                $("#xueshengSelect").change(function(e) {
                        xueshengSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        var xueshengzizhuTypesSelect = document.getElementById("xueshengzizhuTypesSelect");
        if(xueshengzizhuTypesSelect != null && xueshengzizhuTypesOptions != null  && xueshengzizhuTypesOptions.length > 0 ) {
            for (var i = 0; i < xueshengzizhuTypesOptions.length; i++) {
                if (xueshengzizhuTypesOptions[i].codeIndex == ruleForm.xueshengzizhuTypes) {//下拉框value对比,如果一致就赋值汉字
                        xueshengzizhuTypesSelect.options[i].selected = true;
                }
            }
        }

        var xueshengzizhuYesnoTypesSelect = document.getElementById("xueshengzizhuYesnoTypesSelect");
        if(xueshengzizhuYesnoTypesSelect != null && xueshengzizhuYesnoTypesOptions != null  && xueshengzizhuYesnoTypesOptions.length > 0 ) {
            for (var i = 0; i < xueshengzizhuYesnoTypesOptions.length; i++) {
                if (xueshengzizhuYesnoTypesOptions[i].codeIndex == ruleForm.xueshengzizhuYesnoTypes) {//下拉框value对比,如果一致就赋值汉字
                        xueshengzizhuYesnoTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
            var laoshiSelect = document.getElementById("laoshiSelect");
            if(laoshiSelect != null && laoshiOptions != null  && laoshiOptions.length > 0 ) {
                for (var i = 0; i < laoshiOptions.length; i++) {
                    if (laoshiOptions[i].id == ruleForm.laoshiId) {//下拉框value对比,如果一致就赋值汉字
                        laoshiSelect.options[i+1].selected = true;
                        $("#laoshiSelect" ).selectpicker('refresh');
                    }
                }
            }
            var xueshengSelect = document.getElementById("xueshengSelect");
            if(xueshengSelect != null && xueshengOptions != null  && xueshengOptions.length > 0 ) {
                for (var i = 0; i < xueshengOptions.length; i++) {
                    if (xueshengOptions[i].id == ruleForm.xueshengId) {//下拉框value对比,如果一致就赋值汉字
                        xueshengSelect.options[i+1].selected = true;
                        $("#xueshengSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
        if (ruleForm.xueshengzizhuContent != null && ruleForm.xueshengzizhuContent != 'null' && ruleForm.xueshengzizhuContent != '' && $("#xueshengzizhuContentupload").length>0) {

            var xueshengzizhuContentUeditor = UE.getEditor('xueshengzizhuContentEditor');
            xueshengzizhuContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.xueshengzizhuContent != null){
                    mes = ''+ ruleForm.xueshengzizhuContent;
                    // mes = mes.replace(/\n/g, "<br>");
                }
                xueshengzizhuContentUeditor.setContent(mes);
            });
        }
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
        if($("#xueshengzizhuContentupload").length>0) {
            var xueshengzizhuContentEditor = UE.getEditor('xueshengzizhuContentEditor');
            if (xueshengzizhuContentEditor.hasContents()) {
                $('#xueshengzizhuContent-input').attr('value', xueshengzizhuContentEditor.getContent());
            }
        }
    }
    //数字检查
        <!-- 当前表的数字检查 -->
        function xueshengzizhuJineChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[0-9]{0,6}(\.[0-9]{1,2})?$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("只允许输入整数6位,小数2位的数字");
                return false;
            }
        }

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addxueshengzizhu');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                xueshengId: "required",
                laoshiId: "required",
                xueshengzizhuUuidNumber: "required",
                xueshengzizhuName: "required",
                xueshengzizhuFile: "required",
                xueshengzizhuTypes: "required",
                xueshengzizhuJine: "required",
                xueshengzizhuContent: "required",
                xueshengzizhuYesnoTypes: "required",
                xueshengzizhuYesnoText: "required",
                xueshengzizhuShenheTime: "required",
            },
            messages: {
                xueshengId: "学生不能为空",
                laoshiId: "老师不能为空",
                xueshengzizhuUuidNumber: "资助编号不能为空",
                xueshengzizhuName: "学生资助名称不能为空",
                xueshengzizhuFile: "相关证明文件不能为空",
                xueshengzizhuTypes: "学生资助类型不能为空",
                xueshengzizhuJine: "资助金额不能为空",
                xueshengzizhuContent: "学生资助详情不能为空",
                xueshengzizhuYesnoTypes: "审核状态不能为空",
                xueshengzizhuYesnoText: "审核意见不能为空",
                xueshengzizhuShenheTime: "审核时间不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addxueshengzizhu = window.sessionStorage.getItem("addxueshengzizhu");
        if (addxueshengzizhu != null && addxueshengzizhu != "" && addxueshengzizhu != "null") {
            //注册表单验证
            $(validform());
            $("#xueshengzizhuUuidNumber").val(new Date().getTime()+Math.ceil(Math.random()*10));//设置唯一号
                $(".xueshengzizhuYesnoTypesDiv").remove();
                $(".xueshengzizhuYesnoTextDiv").remove();

            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("xueshengzizhu/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
        var insertTime = laydate.render({
            elem: '#insertTime-input'
            ,type: 'datetime'
        });
        var xueshengzizhuShenheTime = laydate.render({
            elem: '#xueshengzizhuShenheTime-input'
            ,type: 'datetime'
        });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        laoshiDataBind();
        xueshengDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#xueshengId").val(ruleForm.xueshengId);
        $("#laoshiId").val(ruleForm.laoshiId);
        $("#xueshengzizhuUuidNumber").val(ruleForm.xueshengzizhuUuidNumber);
        $("#xueshengzizhuName").val(ruleForm.xueshengzizhuName);
        $("#xueshengzizhuJine").val(ruleForm.xueshengzizhuJine);
        $("#xueshengzizhuContent").val(ruleForm.xueshengzizhuContent);
        $("#xueshengzizhuYesnoText").val(ruleForm.xueshengzizhuYesnoText);
        $("#xueshengzizhuShenheTime-input").val(ruleForm.xueshengzizhuShenheTime);

    }
    <!--  级联表的数据回显  -->
    function laoshiDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#laoshiId").val(ruleForm.id);

        $("#laoshiUuidNumber").val(ruleForm.laoshiUuidNumber);
        $("#laoshiName").val(ruleForm.laoshiName);
        $("#laoshiPhone").val(ruleForm.laoshiPhone);
        $("#laoshiIdNumber").val(ruleForm.laoshiIdNumber);
        $("#laoshiEmail").val(ruleForm.laoshiEmail);
    }

    function xueshengDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#xueshengId").val(ruleForm.id);

        $("#xueshengUuidNumber").val(ruleForm.xueshengUuidNumber);
        $("#xueshengName").val(ruleForm.xueshengName);
        $("#xueshengPhone").val(ruleForm.xueshengPhone);
        $("#xueshengIdNumber").val(ruleForm.xueshengIdNumber);
        $("#xueshengEmail").val(ruleForm.xueshengEmail);
        $("#xueyuanValue").val(ruleForm.xueyuanValue);
        $("#zhuanyeValue").val(ruleForm.zhuanyeValue);
        $("#banjiValue").val(ruleForm.banjiValue);
        $("#xueshengShengyuandi").val(ruleForm.xueshengShengyuandi);
        $("#xueshengJiazhangText").val(ruleForm.xueshengJiazhangText);
        $("#xueshengJiatingContent").val(ruleForm.xueshengJiatingContent);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        laoshiShowImg();
        xueshengShowImg();
    }


    <!--  级联表的图片  -->

    function laoshiShowImg() {
        $("#laoshiPhotoImg").attr("src",ruleForm.laoshiPhoto);
    }


    function xueshengShowImg() {
        $("#xueshengPhotoImg").attr("src",ruleForm.xueshengPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        laoshiShowVideo();
        xueshengShowVideo();
    }


    <!--  级联表的视频  -->

    function laoshiShowVideo() {
        $("#laoshiPhotoV").attr("src",ruleForm.laoshiPhoto);
    }

    function xueshengShowVideo() {
        $("#xueshengPhotoV").attr("src",ruleForm.xueshengPhoto);
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            xueshengzizhuTypesSelect();
            xueshengzizhuYesnoTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            laoshiSelect();
            xueshengSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationXueshengzizhutypesSelect();
            initializationXueshengzizhuyesnotypesSelect();
            <!--  初始化级联表的下拉框  -->
            initializationlaoshiSelect();
            initializationxueshengSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
        window.sessionStorage.removeItem('addxueshengzizhu');
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') == '管理员') {
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events:none;width:450px;');
        }
		else if (window.sessionStorage.getItem('role') == '老师') {
            // $(".aaaaaa").remove();
            $(".laoshi").remove();//删除当前用户的信息
        }
		else if (window.sessionStorage.getItem('role') == '学生') {
            // $(".aaaaaa").remove();
            $(".xuesheng").remove();//删除当前用户的信息
        }
        else{
            // alert("未知情况.......");
            // var replyTextUeditor = UE.getEditor('replyTextEditor');
            // replyTextUeditor.ready(function () {
            //     replyTextUeditor.setDisabled('fullscreen');
            // });
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>
