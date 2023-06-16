package ${YYAndroidPackageName};
import ${YYAndroidPackageName}.R;
import com.yoyogames.runner.RunnerJNILib;
import ${YYAndroidPackageName}.RunnerActivity;

import androidx.annotation.RequiresApi;
import androidx.appcompat.app.AppCompatActivity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.VibrationEffect;
import android.view.View;
import android.widget.Button;
import android.os.Vibrator;



public class myclass extends AppCompatActivity{
    
    public void vibrate_start(double duration){
        
        Vibrator v  = (Vibrator) RunnerActivity.CurrentActivity.getApplicationContext().getSystemService(Context.VIBRATOR_SERVICE);
        // Vibrate for duration milliseconds
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            v.vibrate(VibrationEffect.createOneShot(Math.round(duration), VibrationEffect.DEFAULT_AMPLITUDE));
        } else {
            //deprecated in API 26
            v.vibrate(Math.round(duration));
        }
    }

    

}