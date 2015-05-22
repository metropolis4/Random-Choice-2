describe 'directives', ->
  $compile = undefined
  $rootScope = undefined

  beforeEach module "app"
  beforeEach inject (_$compile_, $_rootScope_) ->
    $compile = $_compile_
    $rootScope = $_rootScope_

  it 'should return the correct views', ->
    element = $compile '<options-list></options-list>'
    $rootScope.$digest()
    expect element.html()
      .toContain 'The List'
