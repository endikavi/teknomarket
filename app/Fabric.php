<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Fabric extends Model
{
    // Nombre de la tabla en MySQL.
	protected $table="fabricantes";

	// Atributos que se pueden asignar de manera masiva.
	protected $fillable = array('nombre','email','telefono');
	
	// Aquí ponemos los campos que no queremos que se devuelvan en las consultas.
	protected $hidden = ['created_at','updated_at']; 

	public function Items()
	{	
		return $this->hasMany('App\Item');
	}
}
