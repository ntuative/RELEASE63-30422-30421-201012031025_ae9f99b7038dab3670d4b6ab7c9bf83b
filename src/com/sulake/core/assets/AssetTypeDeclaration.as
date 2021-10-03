package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2081:String;
      
      private var var_2080:Class;
      
      private var var_2079:Class;
      
      private var var_1516:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2081 = param1;
         this.var_2080 = param2;
         this.var_2079 = param3;
         if(rest == null)
         {
            this.var_1516 = new Array();
         }
         else
         {
            this.var_1516 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2081;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2080;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2079;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1516;
      }
   }
}
