package dagger.multibindings;

import dagger.MapKey;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
@MapKey
@Target({ElementType.METHOD})
@Documented
public @interface IntKey {
    int value();
}
