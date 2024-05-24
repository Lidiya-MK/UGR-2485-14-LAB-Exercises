package com.firstapp.composable_tutorial_lesson4

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.animation.animateColorAsState
import androidx.compose.animation.animateContentSize
import androidx.compose.foundation.Image
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.firstapp.composable_tutorial_lesson4.ui.theme.Composable_Tutorial_Lesson4Theme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            Composable_Tutorial_Lesson4Theme {
                Conversation(SampleData.conversationSample)
            }
        }
    }
}

data class Message(val author: String, val body: String)

object SampleData {
    // Sample conversation data
    val conversationSample = listOf(
        Message("Lidiya", "I'm learning Python!"),
        Message("Lidiya", "Here's a list of popular programming languages:\n" +
                "1. Java\n" +
                "2. JavaScript\n" +
                "3. Python\n" +
                "4. C#\n" +
                "5. C++\n" +
                "6. Swift\n" +
                "7. Kotlin\n" +
                "8. TypeScript\n" +
                "9. Ruby\n" +
                "10. Go\n"
               ),
        Message("Lidiya", "What's your favorite programming language?"),
        Message("Lidiya", "Have you tried building any projects with it?")
    )

}

@Composable
fun Conversation(messages: List<Message>) {
    LazyColumn {
        items(messages) { message ->
            MessageCard(message)
        }
    }
}

@Preview
@Composable
fun PreviewConversation() {
    Composable_Tutorial_Lesson4Theme {
        Conversation(SampleData.conversationSample)
    }
}@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MessageCard(msg: Message) {
    Row(modifier = Modifier.padding(all = 8.dp)) {
        Box(
            modifier = Modifier
                .size(60.dp)
                .clip(CircleShape)
                .border(1.5.dp, MaterialTheme.colorScheme.secondary, CircleShape)
        ) {
            Image(
                painter = painterResource(id = R.drawable.waves),
                contentDescription = "Contact profile picture",
                modifier = Modifier
                    .fillMaxSize()
                    .clip(CircleShape)
                    .aspectRatio(1f)
            )
        }
        Spacer(modifier = Modifier.width(8.dp))

        var isExpanded by remember { mutableStateOf(false) }


        val surfaceColor by animateColorAsState(
            if (isExpanded) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.surface,
        )

        Column(modifier = Modifier.clickable { isExpanded = !isExpanded }) {
            Text(
                text = msg.author,
                color = MaterialTheme.colorScheme.secondary,
                style = MaterialTheme.typography.titleSmall
            )

            Spacer(modifier = Modifier.height(4.dp))

            Surface(
                shape = MaterialTheme.shapes.medium,
                shadowElevation = 1.dp,
                color = surfaceColor,
                modifier = Modifier
                    .animateContentSize()
                    .padding(1.dp)
            ) {
                Text(
                    text = msg.body,
                    modifier = Modifier.padding(all = 4.dp),
                    maxLines = if (isExpanded) Int.MAX_VALUE else 1,
                    style = MaterialTheme.typography.bodyMedium
                )
            }
        }
    }
}
