from behave import given, when, then


@given(u'I have setup some state')
def step_setup_state(context):
    raise NotImplementedError


@when(u'I do something')
def step_do_something(context):
    raise NotImplementedError


@then(u'test that something happened')
def step_what_happened(context):
    raise NotImplementedError
