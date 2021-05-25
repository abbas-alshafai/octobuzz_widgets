import 'package:engine_widgets/utils/eng_utils.dart';
import 'package:flutter/material.dart';
import '../widgets/x_text.dart';

class ButtonUtils{


  static MaterialStateProperty<OutlinedBorder?> getBorder({
    final double borderRadius = 10
  }){
    return MaterialStateProperty.resolveWith<OutlinedBorder>(
          (Set<MaterialState> states) {

        return RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(borderRadius)
        );
      },
    );
  }

/*
  static MaterialStateProperty<Color?> getBackgroundColor(BuildContext context,{
    final Color? errorColor,
    final Color? disabledColor,
    final Color? draggedColor,
    final Color? focusedColor,
    final Color? selectedColor,
    final Color? hoveredColor,
    final Color? pressedColor,
    final ButtonType? type,
  }){
    return MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {

        if(states.contains(MaterialState.error)){
          return errorColor ?? Theme.of(context).buttonTheme.colorScheme!.error;
        }
        
        
        if(states.contains(MaterialState.disabled)){
          return disabledColor ?? Theme.of(context).disabledColor;
        }
        
        
        if(states.contains(MaterialState.dragged)){
          /*
          TODO research primary vs onPrimary

          btn.color
          return disabledColor ?? Theme.of(context).buttonTheme.getHoverColor(MaterialButton);
           */
          // Theme.of(context).buttonTheme.colorScheme!.primary.withOpacity(0.4);
          return Theme.of(context).buttonColor; // TODO
          // return Colors.blue.withOpacity(0.04);
        }
        
        
        if(states.contains(MaterialState.focused)){
          return focusedColor ?? Theme.of(context).focusColor;
        }
        
        
        if(states.contains(MaterialState.selected)){
          return selectedColor ?? Theme.of(context).hoverColor;
        }
        
        
        if(states.contains(MaterialState.hovered)){
          return hoveredColor ?? Theme.of(context).hoverColor;
        }
        
        
        if(states.contains(MaterialState.pressed)){

          return Theme.of(context).bu;
        }


        return Theme.of(context).primaryColor;
      },
    );
  }


 */


  /*
  static MaterialStateProperty<T?> getStyle<T>(BuildContext context){
    return MaterialStateProperty.resolveWith<T>(
          (Set<MaterialState> states) {

        return Theme.of(context).buttonTheme.colorScheme.;
      },
    );
  }

   */
}


enum ButtonType{
  elevated,
  text,

}
