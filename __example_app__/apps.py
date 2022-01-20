from django.apps import AppConfig as BaseConfig
from django.utils.translation import gettext_lazy as _


class AppConfig(BaseConfig):
    name = '__example_app__'
    verbose_name = _('Example app')
