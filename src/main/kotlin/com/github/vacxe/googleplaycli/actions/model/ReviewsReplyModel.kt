package com.github.vacxe.googleplaycli.actions.model

data class ReviewsReplyModel(val packageName: String,
                             val editId: String?,
                             val reviewId: String,
                             val replyText: String)