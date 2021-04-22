import 'package:flutter/material.dart';

import '../date_picker_constants.dart';
import '../date_picker_theme.dart';
import '../i18n/date_picker_i18n.dart';
import 'package:ypc_flutter/main/assets/assets.dart';
import 'package:ypc_flutter/common/utils/color.util.dart';

/// DatePicker's title widget.
///
/// @author dylan wu
/// @since 2019-05-16

class DatePickerTitleWidget extends StatelessWidget {
  DatePickerTitleWidget({
    Key key,
    this.pickerTheme,
    this.locale,
    @required this.onCancel,
    @required this.onConfirm,
  }) : super(key: key);

  final DateTimePickerTheme pickerTheme;
  final DateTimePickerLocale locale;
  final DateVoidCallback onCancel, onConfirm;

  @override
  Widget build(BuildContext context) {

    return Container(
        height: pickerTheme.titleHeight,
        child: Stack(
          children: [
            Container(
              color: Colors.white,
              alignment: Alignment.center,
              child: Text(pickerTheme.title_str, style: TextStyle(color: ColorUtil.parse('#333333'),fontSize: 18)),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: (){
                    this.onConfirm();
                  },
                  child: Container(
                      width: 80,
                      height: double.infinity,
                      //color: Colors.red,
                      child: Center(
                        child:Text(
                            '确认',
                            style: TextStyle(
                                color: ColorUtil.parse('#D8B47A'),
                                fontSize: 13
                            )
                        ),
                      ),
                  ),
                )
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: (){
                    this.onCancel();
                  },
                  child: Container(
                    width: 80,
                    height: double.infinity,
                    //color: Colors.red,
                    child: Center(
                      child:Text(
                          '取消',
                          style: TextStyle(
                              color: ColorUtil.parse('#6D7278'),
                              fontSize: 13
                          )
                      ),
                    ),
                  ),
                )
            )
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            border:Border(bottom:BorderSide(width: 1,color:ColorUtil.parse('#F5F5F5') ?? Colors.grey))
        )
    );
  }


}

