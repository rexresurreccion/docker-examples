DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'website',
        'USER': 'jdoe',
        'PASSWORD': 'G^Bx7yedCTEM',
        'HOST': 'database',
        'PORT': '3306',
        'OPTIONS': {
            'init_command': 'SET default_storage_engine=INNODB, character_set_connection=utf8, collation_connection=utf8_bin',
        },
    }
}

ALLOWED_HOSTS = ['*']
