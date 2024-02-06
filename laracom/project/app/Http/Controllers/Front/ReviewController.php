<?php

namespace App\Http\Controllers\Front;

use Illuminate\Http\Request;
use App\Shop\Reviews\Review;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;


class ReviewController extends Controller
{

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $product_id = $request->input('product_id');
        $slug = $request->input('slug');

        if (Auth::check()) {
            // 既にレビューが存在するかチェック
            $existingReview = Review::where('product_id', $product_id)
                ->where('customer_id', Auth::id())
                ->first();
            if ($existingReview) {
                // レビューが既に存在する場合、リダイレクトしてエラーメッセージを表示
                return redirect()->action('Front\ProductController@show', ['product' => $slug])
                    ->withErrors(['review' => 'すでにレビューを投稿しています']);
            }
            $review = new Review;
            $review->product_id = $product_id;
            $review->customer_id = Auth::id();
            $review->evaluation = $request->input('evaluation');
            $review->comment = $request->input('comment');
            $review->save();
            session()->flash('success', '評価とコメントを投稿しました');
        }

        return redirect()->action('Front\ProductController@show', ['product' => $request->slug]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
