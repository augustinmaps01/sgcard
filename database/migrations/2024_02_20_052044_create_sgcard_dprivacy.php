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
        Schema::create('sgcard_dprivacy', function (Blueprint $table) {
            $table->integer('dpr_id')->autoIncrement();
            $table->string('dpr_front');
            $table->string('dpr_back');
            $table->timestamps();
            $table->integer('custid')->constrained();

            $table->foreign('custid')->references('custid')->on('sgcard_customer')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sgcard_dprivacy');
    }
};
