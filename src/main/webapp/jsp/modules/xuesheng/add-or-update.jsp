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
                    <h3 class="block-title">编辑学生</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">学生管理</li>
                        <li class="breadcrumb-item active">编辑学生</li>
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
                        <h3 class="widget-title">学生信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                    <div class="form-group col-md-6 usernameDiv">
                                        <label>账户</label>
                                        <input style="width: 450px" id="username" name="username" class="form-control"
                                               placeholder="账户">
                                    </div>
                                    <div class="form-group col-md-6 xueshengUuidNumberDiv">
                                        <label>学号</label>
                                        <input style="width: 450px" id="xueshengUuidNumber" name="xueshengUuidNumber" class="form-control"
                                               placeholder="学号">
                                    </div>
                                    <div class="form-group col-md-6 xueshengNameDiv">
                                        <label>学生姓名</label>
                                        <input style="width: 450px" id="xueshengName" name="xueshengName" class="form-control"
                                               placeholder="学生姓名">
                                    </div>
                                    <div class="form-group col-md-6 xueshengPhoneDiv">
                                        <label>学生手机号</label>
                                        <input style="width: 450px" id="xueshengPhone" name="xueshengPhone" class="form-control"
                                               onchange="xueshengPhoneChickValue(this)"  placeholder="学生手机号">
                                    </div>
                                    <div class="form-group col-md-6 xueshengIdNumberDiv">
                                        <label>学生身份证号</label>
                                        <input style="width: 450px" id="xueshengIdNumber" name="xueshengIdNumber" class="form-control"
                                               onchange="xueshengIdNumberChickValue(this)"  placeholder="学生身份证号">
                                    </div>
                                    <div class="form-group col-md-6 xueshengEmailDiv">
                                        <label>电子邮箱</label>
                                        <input style="width: 450px" id="xueshengEmail" name="xueshengEmail" class="form-control"
                                               placeholder="电子邮箱">
                                    </div>
                                    <div class="form-group col-md-6 xueshengPhotoDiv">
                                        <label>学生头像</label>
                                        <img id="xueshengPhotoImg" src="" width="100" height="100">
                                        <input name="file" type="file" id="xueshengPhotoupload"
                                               class="form-control-file">
                                        <input name="xueshengPhoto" id="xueshengPhoto-input" type="hidden">
                                    </div>
                                    <div class="form-group col-md-6 sexTypesDiv">
                                        <label>性别</label>
                                        <select style="width: 450px" id="sexTypesSelect" name="sexTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6 xueyuanTypesDiv">
                                        <label>学院</label>
                                        <select style="width: 450px" id="xueyuanTypesSelect" name="xueyuanTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6 zhuanyeTypesDiv">
                                        <label>专业</label>
                                        <select style="width: 450px" id="zhuanyeTypesSelect" name="zhuanyeTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6 banjiTypesDiv">
                                        <label>班级</label>
                                        <select style="width: 450px" id="banjiTypesSelect" name="banjiTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6 xueshengShengyuandiDiv">
                                        <label>生源地</label>
                                        <input style="width: 450px" id="xueshengShengyuandi" name="xueshengShengyuandi" class="form-control"
                                               placeholder="生源地">
                                    </div>
                                    <div class="form-group col-md-6 xueshengJiazhangTextDiv">
                                        <label>家长信息</label>
                                        <textarea style="width: 450px"  id="xueshengJiazhangText" name="xueshengJiazhangText" class="form-control"placeholder="家长信息"></textarea>
                                    </div>
                                    <div class="form-group  col-md-6 xueshengJiatingContentDiv">
                                        <label>家庭情况</label>
                                        <input id="xueshengJiatingContentupload" name="file" type="file">
                                        <script id="xueshengJiatingContentEditor" type="text/plain"
                                                style="width:100%;height:230px;"></script>
                                        <script type = "text/javascript" >
                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                        //相见文档配置属于你自己的编译器
                                        var xueshengJiatingContentUe = UE.getEditor('xueshengJiatingContentEditor', {
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
                                        <input type="hidden" name="xueshengJiatingContent" id="xueshengJiatingContent-input">
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

    var tableName = "xuesheng";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var sexTypesOptions = [];
    var xueyuanTypesOptions = [];
    var zhuanyeTypesOptions = [];
    var banjiTypesOptions = [];
        <!-- 级联表的下拉框数组 -->

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->
        $('#xueshengPhotoupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                var photoUrl= baseUrl + 'file/download?fileName=' + data.result.file;
                document.getElementById('xueshengPhotoImg').setAttribute('src',photoUrl);
                document.getElementById('xueshengPhoto-input').setAttribute('value',photoUrl);
            }
        });


        $('#xueshengJiatingContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('xueshengJiatingContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
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
                    successMes = '添加成功,密码默认为123456';
            }
            httpJson("xuesheng/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addxuesheng');
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
                         window.location.href = "../../../index.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function sexTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=sex_types", "GET", {}, (res) => {
                if(res.code == 0){
                    sexTypesOptions = res.data.list;
                }
            });
        }
        function xueyuanTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=xueyuan_types", "GET", {}, (res) => {
                if(res.code == 0){
                    xueyuanTypesOptions = res.data.list;
                }
            });
        }
        function zhuanyeTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=zhuanye_types", "GET", {}, (res) => {
                if(res.code == 0){
                    zhuanyeTypesOptions = res.data.list;
                }
            });
        }
        function banjiTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=banji_types", "GET", {}, (res) => {
                if(res.code == 0){
                    banjiTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationSextypesSelect(){
            var sexTypesSelect = document.getElementById('sexTypesSelect');
            if(sexTypesSelect != null && sexTypesOptions != null  && sexTypesOptions.length > 0 ){
                for (var i = 0; i < sexTypesOptions.length; i++) {
                    sexTypesSelect.add(new Option(sexTypesOptions[i].indexName,sexTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationXueyuantypesSelect(){
            var xueyuanTypesSelect = document.getElementById('xueyuanTypesSelect');
            if(xueyuanTypesSelect != null && xueyuanTypesOptions != null  && xueyuanTypesOptions.length > 0 ){
                for (var i = 0; i < xueyuanTypesOptions.length; i++) {
                    xueyuanTypesSelect.add(new Option(xueyuanTypesOptions[i].indexName,xueyuanTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationZhuanyetypesSelect(){
            var zhuanyeTypesSelect = document.getElementById('zhuanyeTypesSelect');
            if(zhuanyeTypesSelect != null && zhuanyeTypesOptions != null  && zhuanyeTypesOptions.length > 0 ){
                for (var i = 0; i < zhuanyeTypesOptions.length; i++) {
                    zhuanyeTypesSelect.add(new Option(zhuanyeTypesOptions[i].indexName,zhuanyeTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationBanjitypesSelect(){
            var banjiTypesSelect = document.getElementById('banjiTypesSelect');
            if(banjiTypesSelect != null && banjiTypesOptions != null  && banjiTypesOptions.length > 0 ){
                for (var i = 0; i < banjiTypesOptions.length; i++) {
                    banjiTypesSelect.add(new Option(banjiTypesOptions[i].indexName,banjiTypesOptions[i].codeIndex));
                }
            }
        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        var sexTypesSelect = document.getElementById("sexTypesSelect");
        if(sexTypesSelect != null && sexTypesOptions != null  && sexTypesOptions.length > 0 ) {
            for (var i = 0; i < sexTypesOptions.length; i++) {
                if (sexTypesOptions[i].codeIndex == ruleForm.sexTypes) {//下拉框value对比,如果一致就赋值汉字
                        sexTypesSelect.options[i].selected = true;
                }
            }
        }

        var xueyuanTypesSelect = document.getElementById("xueyuanTypesSelect");
        if(xueyuanTypesSelect != null && xueyuanTypesOptions != null  && xueyuanTypesOptions.length > 0 ) {
            for (var i = 0; i < xueyuanTypesOptions.length; i++) {
                if (xueyuanTypesOptions[i].codeIndex == ruleForm.xueyuanTypes) {//下拉框value对比,如果一致就赋值汉字
                        xueyuanTypesSelect.options[i].selected = true;
                }
            }
        }

        var zhuanyeTypesSelect = document.getElementById("zhuanyeTypesSelect");
        if(zhuanyeTypesSelect != null && zhuanyeTypesOptions != null  && zhuanyeTypesOptions.length > 0 ) {
            for (var i = 0; i < zhuanyeTypesOptions.length; i++) {
                if (zhuanyeTypesOptions[i].codeIndex == ruleForm.zhuanyeTypes) {//下拉框value对比,如果一致就赋值汉字
                        zhuanyeTypesSelect.options[i].selected = true;
                }
            }
        }

        var banjiTypesSelect = document.getElementById("banjiTypesSelect");
        if(banjiTypesSelect != null && banjiTypesOptions != null  && banjiTypesOptions.length > 0 ) {
            for (var i = 0; i < banjiTypesOptions.length; i++) {
                if (banjiTypesOptions[i].codeIndex == ruleForm.banjiTypes) {//下拉框value对比,如果一致就赋值汉字
                        banjiTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
        if (ruleForm.xueshengJiatingContent != null && ruleForm.xueshengJiatingContent != 'null' && ruleForm.xueshengJiatingContent != '' && $("#xueshengJiatingContentupload").length>0) {

            var xueshengJiatingContentUeditor = UE.getEditor('xueshengJiatingContentEditor');
            xueshengJiatingContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.xueshengJiatingContent != null){
                    mes = ''+ ruleForm.xueshengJiatingContent;
                    // mes = mes.replace(/\n/g, "<br>");
                }
                xueshengJiatingContentUeditor.setContent(mes);
            });
        }
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
        if($("#xueshengJiatingContentupload").length>0) {
            var xueshengJiatingContentEditor = UE.getEditor('xueshengJiatingContentEditor');
            if (xueshengJiatingContentEditor.hasContents()) {
                $('#xueshengJiatingContent-input').attr('value', xueshengJiatingContentEditor.getContent());
            }
        }
    }
    //数字检查
        <!-- 当前表的数字检查 -->
        function xueshengPhoneChickValue(e){
            var this_val = e.value || 0;
            var reg=/^(13[0-9]|14[01456879]|15[0-35-9]|16[2567]|17[0-8]|18[0-9]|19[0-35-9])\d{8}$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("手机号不正确");
                return false;
            }
        }
        function xueshengIdNumberChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("身份证号不正确");
                return false;
            }
        }



    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addxuesheng');
    4
        window.location.href = "../../../index.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                username: "required",
                password: "required",
                xueshengUuidNumber: "required",
                xueshengName: "required",
                xueshengPhone: "required",
                xueshengIdNumber: "required",
                xueshengEmail: "required",
                xueshengPhoto: "required",
                sexTypes: "required",
                xueyuanTypes: "required",
                zhuanyeTypes: "required",
                banjiTypes: "required",
                xueshengShengyuandi: "required",
                xueshengJiazhangText: "required",
                xueshengJiatingContent: "required",
            },
            messages: {
                username: "账户不能为空",
                password: "密码不能为空",
                xueshengUuidNumber: "学号不能为空",
                xueshengName: "学生姓名不能为空",
                xueshengPhone: "学生手机号不能为空",
                xueshengIdNumber: "学生身份证号不能为空",
                xueshengEmail: "电子邮箱不能为空",
                xueshengPhoto: "学生头像不能为空",
                sexTypes: "性别不能为空",
                xueyuanTypes: "学院不能为空",
                zhuanyeTypes: "专业不能为空",
                banjiTypes: "班级不能为空",
                xueshengShengyuandi: "生源地不能为空",
                xueshengJiazhangText: "家长信息不能为空",
                xueshengJiatingContent: "家庭情况不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addxuesheng = window.sessionStorage.getItem("addxuesheng");
        if (addxuesheng != null && addxuesheng != "" && addxuesheng != "null") {
            //注册表单验证
            $(validform());
            $("#xueshengUuidNumber").val(new Date().getTime()+Math.ceil(Math.random()*10));//设置唯一号

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
            http("xuesheng/info/" + updateId, "GET", {}, (res) => {
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
    }


    function dataBind() {


    <!--  级联表的数据回显  -->


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#username").val(ruleForm.username);
        $("#password").val(ruleForm.password);
        $("#xueshengUuidNumber").val(ruleForm.xueshengUuidNumber);
        $("#xueshengName").val(ruleForm.xueshengName);
        $("#xueshengPhone").val(ruleForm.xueshengPhone);
        $("#xueshengIdNumber").val(ruleForm.xueshengIdNumber);
        $("#xueshengEmail").val(ruleForm.xueshengEmail);
        $("#xueshengShengyuandi").val(ruleForm.xueshengShengyuandi);
        $("#xueshengJiazhangText").val(ruleForm.xueshengJiazhangText);
        $("#xueshengJiatingContent").val(ruleForm.xueshengJiatingContent);

    }
    <!--  级联表的数据回显  -->

    //图片显示
    function showImg() {
        <!--  当前表的图片  -->
        $("#xueshengPhotoImg").attr("src",ruleForm.xueshengPhoto);

        <!--  级联表的图片  -->
    }


    <!--  级联表的图片  -->


    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
    }


    <!--  级联表的视频  -->



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
            sexTypesSelect();
            xueyuanTypesSelect();
            zhuanyeTypesSelect();
            banjiTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationSextypesSelect();
            initializationXueyuantypesSelect();
            initializationZhuanyetypesSelect();
            initializationBanjitypesSelect();
            <!--  初始化级联表的下拉框  -->

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
        window.sessionStorage.removeItem('addxuesheng');
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
