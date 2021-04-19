$(function ()
{
    $("[name=birthday]").datepicker({todayBtn:"linked",keyboardNavigation:!1,forceParse:!1,calendarWeeks:!0,autoclose:!0})

    $('form:eq(0)').bootstrapValidator({
        //每个字段通用的校验提示信息
        message: '这个值是无效的',
        //校验方式为内容改变
        trigger:"change",
        //不进行校验的元素
        excluded: [':disabled', ':hidden', ':not(:visible)'],
        //校验是显示图标
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        //需要校验的name名称
        fields: {
            nick: {
                validators: {
                    notEmpty: {
                        message: '用户昵称是必填项,不能为空!'
                    },
                    stringLength: {
                        min: 2,
                        max: 25,
                        message: '用户昵称长度不能低于2不能高于25'
                    }
                }
            },
            name: {
                validators: {
                    notEmpty: {
                        message: '登录账号是必填项,不能为空!'
                    },
                    stringLength: {
                        min: 5,
                        max: 25,
                        message: '登录账号长度不能低于5不能高于25'
                    },
                    //有5字符以上才发送ajax请求
                    threshold: 5,
                    //ajax验证。server result:{"valid",true or false}
                    remote: {
                        url: root+"/user/check.do",
                        type: 'POST',
                        //ajax刷新的时间是1秒一次
                        delay: 1000,
                        message: '用户名已存在,请重新输入',
                        //自定义提交数据，默认值提交当前input value
                        data: function(validator) {
                            return {
                                name : $("input[name=userName]").val()
                            }
                        }
                    }
                }
            },
            pass: {
                validators: {
                    notEmpty: {
                        message: '登陆密码是必填项,不能为空!'
                    },
                    stringLength: {
                        min: 6,
                        max: 25,
                        message: '登陆密码长度不能低于6不能高于25!'
                    },
                    different: {
                        field: 'name',
                        message: '登陆密码不能和登陆名称一致!'
                    }
                }
            },
            repass: {
                validators: {
                    notEmpty: {
                        message: '登陆密码是必填项,不能为空!'
                    },
                    identical: {
                        field: 'pass',
                        message: '两次密码输入不一致!'
                    }
                }
            },
            gender: {
                validators: {
                    callback: {
                        message: '请选择性别!',
                        callback: function(value, validator) {
                            return value !== '0';
                        }
                    }
                }
            },
            phone: {
                validators: {
                    notEmpty: {
                        message: '手机号码是必填项,不能为空!'
                    },
                    regexp: {
                        regexp: /^1[3|4|5|7|8|9]\d{9}$/,
                        message: '请输入有效手机号码!'
                    }
                }
            },
            birthday: {
                validators: {
                    notEmpty: {
                        message: '出生日期是必填项,不能为空!'
                    }
                }
            }
        }
    });

});