function saveClient() {
    var name = $('#name').val();
    var age = $('#age').val();
    var profession = $('#profession').val();
    $.ajax({
        url: '../index/save?name=' + name + '&age=' + age + '&profession=' + profession,
        success: function (result) {
            alert(result);
        }
    });
}
setTimeout(function () {
    $("#loading").fadeOut("slow");
}, 2000);
$(document).ready(function () {
    $(".button-collapse").sideNav();
    $('select').material_select();
    $("#search-go").on("click", function (e) {
        if ($("#search-input").is(":focus"))
            $("#seach-form").submit();
        else
            $("#search-input").focus();
    });
    $("#search-close").on("click", function (e) {
        $("#search-input").blur();
        $("#search-input").blur();
        e.preventDefault();
        e.stopPropagation();
    });
});