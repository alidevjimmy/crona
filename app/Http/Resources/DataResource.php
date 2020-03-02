<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class DataResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param Request $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'confirmed' => $this->confirmed,
            'deaths' => $this->deaths,
            'recovered' => $this->recovered,
            'last_update' => $this->updated_at
        ];
    }
}
