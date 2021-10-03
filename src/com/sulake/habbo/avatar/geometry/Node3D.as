package com.sulake.habbo.avatar.geometry
{
   public class Node3D
   {
       
      
      private var var_783:Vector3D;
      
      private var var_1719:Vector3D;
      
      private var var_2406:Boolean = false;
      
      public function Node3D(param1:Number, param2:Number, param3:Number)
      {
         this.var_1719 = new Vector3D();
         super();
         this.var_783 = new Vector3D(param1,param2,param3);
         if(param1 != 0 || param2 != 0 || param3 != 0)
         {
            this.var_2406 = true;
         }
      }
      
      public function get location() : Vector3D
      {
         return this.var_783;
      }
      
      public function get transformedLocation() : Vector3D
      {
         return this.var_1719;
      }
      
      public function applyTransform(param1:Matrix4x4) : void
      {
         if(this.var_2406)
         {
            this.var_1719 = param1.vectorMultiplication(this.var_783);
         }
      }
   }
}
