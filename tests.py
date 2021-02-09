import pytest
from hello import hello_world


def test_hello_word_text():
    assert hello_world() == 'Hello World!'

def test_hello_word_is_string():
    assert isinstance(hello_world(), str)

