//= require jquery
//= require jquery_ujs
//= require jstree
//= require_tree .

$(() => {
    $('#jstree').jstree({ 'core' : {
            'data' : {
                'url' : 'tree_data/1/1'
                },
        } });
})