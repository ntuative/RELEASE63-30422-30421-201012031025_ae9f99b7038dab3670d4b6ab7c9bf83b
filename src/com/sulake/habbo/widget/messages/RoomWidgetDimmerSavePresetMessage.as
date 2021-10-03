package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_750:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2386:int;
      
      private var var_2387:int;
      
      private var _color:uint;
      
      private var var_973:int;
      
      private var var_2385:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_750);
         this.var_2386 = param1;
         this.var_2387 = param2;
         this._color = param3;
         this.var_973 = param4;
         this.var_2385 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2386;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2387;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_973;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2385;
      }
   }
}
