# -*- coding:UTF-8 -*-
import jpush
from jpush import common

P_id = "110000000091"
MESSAGE = u"你好as!!!"
def a():
    TAG = P_id
    app_key = "8f1da9d68218066965ad2157"
    master_secret = "91d325746680fcd8c7154471"
    _jpush = jpush.JPush(app_key, master_secret)
    push = _jpush.create_push()
    # if you set the logging level to "DEBUG",it will show the debug logging.
    _jpush.set_logging("DEBUG")
    push.audience = jpush.tag(TAG)
    # push.audience = jpush.all_
    push.notification = jpush.notification(alert=MESSAGE)
    push.platform = jpush.all_
    try:
        response=push.send()
    except common.Unauthorized:
        raise common.Unauthorized("Unauthorized")
    except common.APIConnectionException:
        raise common.APIConnectionException("conn error")
    except common.JPushFailure:
        print ("JPushFailure")
    except:
        print ("Exception")
