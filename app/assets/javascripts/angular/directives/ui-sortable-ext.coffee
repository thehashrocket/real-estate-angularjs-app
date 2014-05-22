# Disables/enables uiSortable depending on value of boolean attribute.
angular.module('realEstateApp').directive 'uiSortableExt', ->
  restrict: 'A'
  link: (scope, element, attrs) ->
    toggleSortable = ->
      element.sortable(if scope[attrs.uiSortableExt] then 'enable' else 'disable')
    scope.$watch attrs.uiSortableExt, toggleSortable, true
