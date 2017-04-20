(exports ? this).data_table = ->
  $('#users-table').dataTable
    processing: true
    serverSide: true
    ajax: $('#users-table').data('source')
    pagingType: 'full_numbers'

(exports ? this).assign_asset = (id) ->
  employee_id = $('#employee_id').val()
  path = '/employees/' + employee_id + '/edit'
  $.ajax(
    type: 'POST'
    url: '/employees/assign_asset'
    dataType: 'html'
    data:
      employee_id: employee_id
      asset_id: id
    success: (data) ->
      Turbolinks.visit(path)
  )

(exports ? this).autoComplete = ->
  $.each $('.auto_complete'), (index, value) ->
    $('#' + $(this).attr('id')).tokenInput $(this).attr('data-url'),
      preventDuplicates: if 'false' == $(this).attr('data-duplicate') then false else true
      tokenLimit: if null == $(this).attr('data-selection-limit') then null else $(this).attr('data-selection-limit')
      hintText: if null == $(this).attr('data-hint-text') then 'Type to Fetch Data' else $(this).attr('data-hint-text')
      noResultsText: if null == $(this).attr('data-no-result') then 'No Data Found' else $(this).attr('data-no-result')
      searchingText: if null == $(this).attr('data-searching-text') then 'Fetching Data' else $(this).attr('data-searching-text')
      onAdd: (item) ->
        if null == $(this).attr('data-on-add-call-function') then {} else eval($(this).attr('data-on-add-call-function') + '(item.id)')
        return
      onDelete: ->
        if null == $(this).attr('data-on-delete-call-function') then [] else eval($(this).attr('data-on-delete-call-function') + '($(this).attr(\'data-success-update\'))')
        return
      prePopulate: if null == $(this).attr('data-selected') then [] else eval($(this).attr('data-selected'))
      theme: if null == $(this).attr('data-theme') then 'mac' else $(this).attr('data-theme')

$(document).on "ready page:load", ->
#  autoComplete()

