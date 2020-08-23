// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("@rails/activestorage").start();
require("channels");
// require("jquery")
import JQuery from 'jquery';
import 'bootstrap';
import '@fortawesome/fontawesome-free/js/all';
import '@fortawesome/fontawesome-free/css/all';

window.$ = window.JQuery = JQuery;

$(document).ready(function () {
    
    window.selectees = [];
    
    $(document).click(function() {
        $('.alert-text').fadeOut();
    });
    
    $('body').on('change', '#document_pdf', function(e) {
        $('#fileup').text(e.target.value.replace('C:\\fakepath\\', ""))
    });
    
    $(document).on('change', '.checkbox', function() {
        var folderId = $(this).attr("id").replace(/^\D+/g, '')
        if ($(this).is(':checked') && !selectees.includes(folderId)) {
            selectees.push(folderId);
            console.log(selectees);
        } else if($(this).is(':not(:checked)')) {
            var newSelectees = selectees.filter(s => s !== folderId);
            selectees = newSelectees;
            console.log(selectees);
        }
    });
    
    $('#compareBtn').click(function() {
        jQuery.ajax({
            url: '/selections',
            type: 'POST',
            data: {
                selectees_array: JSON.stringify(selectees)
            },
            success: function(data) {
                console.log(data);
            }
        }); 
    });
});
