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
        Schema::create('sgcard_customer', function (Blueprint $table) {
            $table->integer('custid')->autoIncrement();
            $table->string('client_ID')->unique();
            $table->string('svngs_accno')->unique();
            $table->integer('amount_opened');
            $table->string('fname');
            $table->string('mname');
            $table->string('lname');
            $table->enum('status',['active', 'doormant'])->default('active');
            $table->string('suffix')->nullable();
            $table->date('birthdate');
            $table->string('address');
            $table->string('photo');
            $table->timestamps();
            $table->integer('brid')->constrained();

             $table->foreign('brid')->references('brid')->on('branch')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sgcard_customer');
    }
};
