package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_171:Number = 0;
      
      private var var_170:Number = 0;
      
      private var var_2329:Number = 0;
      
      private var var_2331:Number = 0;
      
      private var var_2330:Number = 0;
      
      private var var_2328:Number = 0;
      
      private var var_236:int = 0;
      
      private var var_2077:int = 0;
      
      private var var_287:Array;
      
      private var var_2332:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_287 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_171 = param3;
         this.var_170 = param4;
         this.var_2329 = param5;
         this.var_236 = param6;
         this.var_2077 = param7;
         this.var_2331 = param8;
         this.var_2330 = param9;
         this.var_2328 = param10;
         this.var_2332 = param11;
         this.var_287 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_171;
      }
      
      public function get z() : Number
      {
         return this.var_170;
      }
      
      public function get localZ() : Number
      {
         return this.var_2329;
      }
      
      public function get targetX() : Number
      {
         return this.var_2331;
      }
      
      public function get targetY() : Number
      {
         return this.var_2330;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2328;
      }
      
      public function get dir() : int
      {
         return this.var_236;
      }
      
      public function get dirHead() : int
      {
         return this.var_2077;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2332;
      }
      
      public function get actions() : Array
      {
         return this.var_287.slice();
      }
   }
}
