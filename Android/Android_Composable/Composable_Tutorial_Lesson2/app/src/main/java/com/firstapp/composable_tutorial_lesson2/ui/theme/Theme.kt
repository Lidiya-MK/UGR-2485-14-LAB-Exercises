package com.firstapp.composable_tutorial_lesson2.ui.theme

import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.Composable

@Composable
fun ComposeTutorialLesson2Theme(content: @Composable () -> Unit) {
    MaterialTheme {
        content()
    }
}
