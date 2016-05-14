<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!-- footer content -->
<br />
<footer>
    <div class="pull-right">
        Forum - Por Vinícius Schettino. <a href="https://github.com/puikinsh/gentelella">Gentelella</a> Theme
    </div>
    <div class="clearfix"></div>
</footer>
<!-- /footer content -->
</div>
<!-- /page content -->
</div>

</div>

<div id="custom_notifications" class="custom-notifications dsp_none">
    <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
    </ul>
    <div class="clearfix"></div>
    <div id="notif-group" class="tabbed_notifications"></div>
</div>

<script src="/Forum/assets/js/bootstrap.min.js"></script>

<!-- gauge js -->
<!--<script type="text/javascript" src="/Forum/assets/js/gauge/gauge.min.js"></script>-->
<!--<script type="text/javascript" src="/Forum/assets/js/gauge/gauge_demo.js"></script>-->
<!-- bootstrap progress js -->
<script src="/Forum/assets/js/progressbar/bootstrap-progressbar.min.js"></script>
<!-- icheck -->
<script src="/Forum/assets/js/icheck/icheck.min.js"></script>
<!-- daterangepicker -->
<script type="text/javascript" src="/Forum/assets/js/moment/moment.min.js"></script>
<script type="text/javascript" src="/Forum/assets/js/datepicker/daterangepicker.js"></script>
<!-- chart js -->
<script src="/Forum/assets/js/chartjs/chart.min.js"></script>

<script src="/Forum/assets/js/custom.js"></script>

<!-- flot js -->
<!--[if lte IE 8]><script type="text/javascript" src="/Forum/assets/js/excanvas.min.js"></script><![endif]-->
<script type="text/javascript" src="/Forum/assets/js/flot/jquery.flot.js"></script>
<script type="text/javascript" src="/Forum/assets/js/flot/jquery.flot.pie.js"></script>
<script type="text/javascript" src="/Forum/assets/js/flot/jquery.flot.orderBars.js"></script>
<script type="text/javascript" src="/Forum/assets/js/flot/jquery.flot.time.min.js"></script>
<script type="text/javascript" src="/Forum/assets/js/flot/date.js"></script>
<script type="text/javascript" src="/Forum/assets/js/flot/jquery.flot.spline.js"></script>
<script type="text/javascript" src="/Forum/assets/js/flot/jquery.flot.stack.js"></script>
<script type="text/javascript" src="/Forum/assets/js/flot/curvedLines.js"></script>
<script type="text/javascript" src="/Forum/assets/js/flot/jquery.flot.resize.js"></script>


<!-- worldmap -->
<script type="text/javascript" src="/Forum/assets/js/maps/jquery-jvectormap-2.0.3.min.js"></script>
<script type="text/javascript" src="/Forum/assets/js/maps/gdp-data.js"></script>
<script type="text/javascript" src="/Forum/assets/js/maps/jquery-jvectormap-world-mill-en.js"></script>
<script type="text/javascript" src="/Forum/assets/js/maps/jquery-jvectormap-us-aea-en.js"></script>
<!-- pace -->
<script src="/Forum/assets/js/pace/pace.min.js"></script>
<!-- skycons -->
<script src="/Forum/assets/js/skycons/skycons.min.js"></script>
<!-- icheck -->
<script src="/Forum/assets/js/icheck/icheck.min.js"></script>
<!-- tags -->
<script src="/Forum/assets/js/tags/jquery.tagsinput.min.js"></script>
<!-- switchery -->
<script src="/Forum/assets/js/switchery/switchery.min.js"></script>
<!-- daterangepicker -->
<script type="text/javascript" src="/Forum/assets/js/moment/moment.min.js"></script>
<script type="text/javascript" src="/Forum/assets/js/datepicker/daterangepicker.js"></script>
<!-- richtext editor -->
<script src="/Forum/assets/js/editor/bootstrap-wysiwyg.js"></script>
<script src="/Forum/assets/js/editor/external/jquery.hotkeys.js"></script>
<script src="/Forum/assets/js/editor/external/google-code-prettify/prettify.js"></script>
<!-- select2 -->
<!--<script src="/Forum/assets/js/select/select2.full.js"></script>-->
<!-- form validation -->
<script type="text/javascript" src="/Forum/assets/js/parsley/parsley.min.js"></script>
<!-- textarea resize -->
<script src="/Forum/assets/js/textarea/autosize.min.js"></script>
<!-- input mask -->
<script src="/Forum/assets/js/input_mask/jquery.inputmask.js"></script>
<script>
    var icons = new Skycons({
        "color": "#73879C"
    }),
            list = [
                "clear-day", "clear-night", "partly-cloudy-day",
                "partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",
                "fog"
            ],
            i;

    for (i = list.length; i--; )
        icons.set(list[i], list[i]);

    icons.play();
</script>

<!-- Doughnut Chart -->

<!-- /Doughnut Chart -->

<!-- datepicker -->
<script type="text/javascript">
    function replyPost(idResponse, idPost) {
        txt = $(idResponse).val();
        if (txt.length > 0) {
            $.ajax({
                method: "POST",
                url: "/Forum/web/resposta/create",
                data: {txt: txt, post: idPost}
            })
                    .done(function (msg) {
                        window.location = '';
                    });
        } else {
            alert("A mensagem precisa ter pelo menos um caractere")
        }
    }

    function removeReply(id) {
        $.ajax({
            method: "GET",
            url: "/Forum/web/resposta/remove/"+id
        })
                .done(function (msg) {
                    $('#reply-container-'+id).slideUp(300, function(){
                        this.destroy();
                    })
                });

    }

    $(document).ready(function () {

        var cb = function (start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
            $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            //alert("Callback has fired: [" + start.format('MMMM D, YYYY') + " to " + end.format('MMMM D, YYYY') + ", label = " + label + "]");
        }

        var optionSet1 = {
            startDate: moment().subtract(29, 'days'),
            endDate: moment(),
            minDate: '01/01/2012',
            maxDate: '12/31/2015',
            dateLimit: {
                days: 60
            },
            showDropdowns: true,
            showWeekNumbers: true,
            timePicker: false,
            timePickerIncrement: 1,
            timePicker12Hour: true,
            ranges: {
                'Today': [moment(), moment()],
                'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                'This Month': [moment().startOf('month'), moment().endOf('month')],
                'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
            },
            opens: 'left',
            buttonClasses: ['btn btn-default'],
            applyClass: 'btn-small btn-primary',
            cancelClass: 'btn-small',
            format: 'MM/DD/YYYY',
            separator: ' to ',
            locale: {
                applyLabel: 'Submit',
                cancelLabel: 'Clear',
                fromLabel: 'From',
                toLabel: 'To',
                customRangeLabel: 'Custom',
                daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
                monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
                firstDay: 1
            }
        };
        $('#reportrange span').html(moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));
        $('#reportrange').daterangepicker(optionSet1, cb);
        $('#reportrange').on('show.daterangepicker', function () {
            console.log("show event fired");
        });
        $('#reportrange').on('hide.daterangepicker', function () {
            console.log("hide event fired");
        });
        $('#reportrange').on('apply.daterangepicker', function (ev, picker) {
            console.log("apply event fired, start/end dates are " + picker.startDate.format('MMMM D, YYYY') + " to " + picker.endDate.format('MMMM D, YYYY'));
        });
        $('#reportrange').on('cancel.daterangepicker', function (ev, picker) {
            console.log("cancel event fired");
        });
        $('#options1').click(function () {
            $('#reportrange').data('daterangepicker').setOptions(optionSet1, cb);
        });
        $('#options2').click(function () {
            $('#reportrange').data('daterangepicker').setOptions(optionSet2, cb);
        });
        $('#destroy').click(function () {
            $('#reportrange').data('daterangepicker').remove();
        });
    });
</script>
<!-- select2 -->

<!-- /select2 -->
<!-- input tags -->
<script>
    function onAddTag(tag) {
        alert("Added a tag: " + tag);
    }

    function onRemoveTag(tag) {
        alert("Removed a tag: " + tag);
    }

    function onChangeTag(input, tag) {
        alert("Changed a tag: " + tag);
    }

    $(function () {
        $('#tags_1').tagsInput({
            width: 'auto'
        });
    });
</script>
<!-- editor -->
<script>
    $(document).ready(function () {
        $('.xcxc').click(function () {
            $('#descr').val($('#editor').html());
        });
    });

    $(function () {
        function initToolbarBootstrapBindings() {
            var fonts = ['Serif', 'Sans', 'Arial', 'Arial Black', 'Courier',
                'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
                'Times New Roman', 'Verdana'
            ],
                    fontTarget = $('[title=Font]').siblings('.dropdown-menu');
            $.each(fonts, function (idx, fontName) {
                fontTarget.append($('<li><a data-edit="fontName ' + fontName + '" style="font-family:\'' + fontName + '\'">' + fontName + '</a></li>'));
            });
            $('a[title]').tooltip({
                container: 'body'
            });
            $('.dropdown-menu input').click(function () {
                return false;
            })
                    .change(function () {
                        $(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');
                    })
                    .keydown('esc', function () {
                        this.value = '';
                        $(this).change();
                    });

            $('[data-role=magic-overlay]').each(function () {
                var overlay = $(this),
                        target = $(overlay.data('target'));
                overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
            });
            if ("onwebkitspeechchange" in document.createElement("input")) {
                var editorOffset = $('#editor').offset();
                $('#voiceBtn').css('position', 'absolute').offset({
                    top: editorOffset.top,
                    left: editorOffset.left + $('#editor').innerWidth() - 35
                });
            } else {
                $('#voiceBtn').hide();
            }
        }
        ;

        function showErrorAlert(reason, detail) {
            var msg = '';
            if (reason === 'unsupported-file-type') {
                msg = "Unsupported format " + detail;
            } else {
                console.log("error uploading file", reason, detail);
            }
            $('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>' +
                    '<strong>File upload error</strong> ' + msg + ' </div>').prependTo('#alerts');
        }
        ;
        initToolbarBootstrapBindings();
        $('#editor').wysiwyg({
            fileUploadError: showErrorAlert
        });
        window.prettyPrint && prettyPrint();
    });
</script>
<script>
    $(document).ready(function () {
        $(":input").inputmask();
    });
</script>
<!-- /editor -->
<!-- /input tags -->
<script>
    NProgress.done();
</script>
<!-- /datepicker -->
<!-- /footer content -->
</body>

</html>
