package com.firstapp.composable_tutorial_lesson3

import android.content.res.Configuration
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.Image
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip

import androidx.compose.ui.graphics.RectangleShape
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

import com.firstapp.composable_tutorial_lesson3.ui.theme.MaterialDesignTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MaterialDesignTheme {

                Surface(
                    modifier = Modifier.fillMaxSize(),
                ) {
                    MessageCard(Message("Lidiya Mamo", "Descriptive Text here"))
                }
            }
        }
    }
}

data class Message(val author: String, val body: String)

@Composable
fun MessageCard(msg: Message) {
    Row (modifier = Modifier.border(width = 1.dp, color = MaterialTheme.colorScheme.secondary, shape= RectangleShape).padding(all = 8.dp)) {
        Image(modifier = Modifier
            .size(50.dp)
            .clip(CircleShape)
            .border(
                width = 1.5.dp,
                color = MaterialTheme.colorScheme.primary,
                shape = CircleShape
            ),
            painter = painterResource(id = R.drawable.waves),
            contentDescription = "Profile Picture")
        Spacer(modifier = Modifier.width(8.dp))
        Column {
            Text(text = msg.author,
                color = MaterialTheme.colorScheme.secondary,
                fontSize = 15.sp,
                fontFamily = FontFamily.Cursive,
                style = MaterialTheme.typography.titleLarge)
            Spacer(modifier = Modifier.height(5.dp))
            Surface (shape = MaterialTheme.shapes.medium, shadowElevation = 1.dp){
                Text(text = msg.body, color = MaterialTheme.colorScheme.secondary,
                    fontSize = 15.sp,
                    fontFamily = FontFamily.Cursive,
                    style = MaterialTheme.typography.bodyMedium,
                    modifier = Modifier.padding(all = 4.dp)
                )
            }
        }
    }
}

@Preview(showBackground = true, name = "Light Mode")
@Preview(showBackground = true, name = "Dark Mode", uiMode = Configuration.UI_MODE_NIGHT_YES)
@Composable
fun GreetingPreview() {
    MaterialDesignTheme {
        Surface {
            MessageCard(Message("Lidiya Mamo", "Descriptive text here"))
        }
    }
}