<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('sgcard_nais', function (Blueprint $table) {
            $table->integer('naisid')->autoIncrement();
            $table->string('nais_front');
            $table->string('nais_back');
            $table->integer('custid')->constrained();
            $table->timestamps();

            $table->foreign('custid')->references('custid')->on('sgcard_customer')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sgcard_nais');
    }
};
