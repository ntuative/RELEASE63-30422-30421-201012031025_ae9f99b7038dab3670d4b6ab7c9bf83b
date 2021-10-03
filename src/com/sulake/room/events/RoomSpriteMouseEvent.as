package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1534:String = "";
      
      private var var_2352:String = "";
      
      private var var_2356:String = "";
      
      private var var_2358:Number = 0;
      
      private var var_2359:Number = 0;
      
      private var var_2357:Number = 0;
      
      private var var_2353:Number = 0;
      
      private var var_2355:Boolean = false;
      
      private var var_2351:Boolean = false;
      
      private var var_2350:Boolean = false;
      
      private var var_2354:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1534 = param2;
         this.var_2352 = param3;
         this.var_2356 = param4;
         this.var_2358 = param5;
         this.var_2359 = param6;
         this.var_2357 = param7;
         this.var_2353 = param8;
         this.var_2355 = param9;
         this.var_2351 = param10;
         this.var_2350 = param11;
         this.var_2354 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1534;
      }
      
      public function get canvasId() : String
      {
         return this.var_2352;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2356;
      }
      
      public function get screenX() : Number
      {
         return this.var_2358;
      }
      
      public function get screenY() : Number
      {
         return this.var_2359;
      }
      
      public function get localX() : Number
      {
         return this.var_2357;
      }
      
      public function get localY() : Number
      {
         return this.var_2353;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2355;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2351;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2350;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2354;
      }
   }
}
