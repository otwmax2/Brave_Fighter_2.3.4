package com.chartboost.sdk.impl;

import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import com.chartboost.sdk.Libraries.CBLogging;

/* JADX INFO: loaded from: classes.dex */
public class av {
    private final Handler a;

    public static Integer a(int i) {
        if (i < 1 || i > 9) {
            return null;
        }
        return Integer.valueOf(i);
    }

    public av(Handler handler) {
        this.a = handler;
    }

    public void a(int i, com.chartboost.sdk.Model.c cVar, Runnable runnable, com.chartboost.sdk.d dVar) {
        a(i, cVar, runnable, true, dVar);
    }

    public void a(int i, com.chartboost.sdk.Model.c cVar, Runnable runnable) {
        a(i, cVar, runnable, false);
    }

    private void a(final int i, final com.chartboost.sdk.Model.c cVar, final Runnable runnable, final boolean z, com.chartboost.sdk.d dVar) {
        if (i == 7) {
            if (runnable != null) {
                runnable.run();
            }
        } else {
            if (cVar == null || cVar.s == null) {
                CBLogging.a("AnimationManager", "Transition of impression canceled due to lack of container");
                return;
            }
            final View viewD = cVar.s.d();
            if (viewD == null) {
                dVar.d(cVar);
                CBLogging.a("AnimationManager", "Transition of impression canceled due to lack of view");
            } else {
                ViewTreeObserver viewTreeObserver = viewD.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.chartboost.sdk.impl.av.1
                        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                        public void onGlobalLayout() {
                            viewD.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                            av.this.a(i, cVar, runnable, z);
                        }
                    });
                }
            }
        }
    }

    void a(int i, com.chartboost.sdk.Model.c cVar, Runnable runnable, boolean z) {
        long j;
        AnimationSet animationSet;
        az azVar;
        ScaleAnimation scaleAnimation;
        TranslateAnimation translateAnimation;
        az azVar2;
        ScaleAnimation scaleAnimation2;
        TranslateAnimation translateAnimation2;
        AnimationSet animationSet2 = new AnimationSet(true);
        animationSet2.addAnimation(new AlphaAnimation(1.0f, 1.0f));
        if (cVar == null || cVar.s == null) {
            CBLogging.a("AnimationManager", "Transition of impression canceled due to lack of container");
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        View viewD = cVar.s.d();
        if (viewD == null) {
            if (runnable != null) {
                runnable.run();
            }
            CBLogging.a("AnimationManager", "Transition of impression canceled due to lack of view");
            return;
        }
        View view = (cVar.n == 2 || cVar.n == 1) ? cVar.s : viewD;
        float width = view.getWidth();
        float height = view.getHeight();
        float f = (1.0f - 0.4f) / 2.0f;
        if (cVar.p.b != 1) {
            j = 500;
        } else {
            j = 500;
        }
        switch (i) {
            case 1:
                if (z) {
                    azVar = new az(-60.0f, 0.0f, width / 2.0f, height / 2.0f, true);
                } else {
                    azVar = new az(0.0f, 60.0f, width / 2.0f, height / 2.0f, true);
                }
                azVar.setDuration(j);
                azVar.setFillAfter(true);
                animationSet2.addAnimation(azVar);
                if (z) {
                    scaleAnimation = new ScaleAnimation(0.4f, 1.0f, 0.4f, 1.0f);
                } else {
                    scaleAnimation = new ScaleAnimation(1.0f, 0.4f, 1.0f, 0.4f);
                }
                scaleAnimation.setDuration(j);
                scaleAnimation.setFillAfter(true);
                animationSet2.addAnimation(scaleAnimation);
                if (z) {
                    translateAnimation = new TranslateAnimation((-width) * 0.4f, 0.0f, height * f, 0.0f);
                } else {
                    translateAnimation = new TranslateAnimation(0.0f, width, 0.0f, height * f);
                }
                translateAnimation.setDuration(j);
                translateAnimation.setFillAfter(true);
                animationSet2.addAnimation(translateAnimation);
                animationSet = animationSet2;
                break;
            case 2:
                if (z) {
                    ScaleAnimation scaleAnimation3 = new ScaleAnimation(0.6f, 1.1f, 0.6f, 1.1f, 1, 0.5f, 1, 0.5f);
                    scaleAnimation3.setDuration(Math.round(j * 0.6f));
                    scaleAnimation3.setStartOffset(0L);
                    scaleAnimation3.setFillAfter(true);
                    animationSet2.addAnimation(scaleAnimation3);
                    ScaleAnimation scaleAnimation4 = new ScaleAnimation(1.0f, 0.81818175f, 1.0f, 0.81818175f, 1, 0.5f, 1, 0.5f);
                    scaleAnimation4.setDuration(Math.round(j * 0.19999999f));
                    scaleAnimation4.setStartOffset(Math.round(j * 0.6f));
                    scaleAnimation4.setFillAfter(true);
                    animationSet2.addAnimation(scaleAnimation4);
                    ScaleAnimation scaleAnimation5 = new ScaleAnimation(1.0f, 1.1111112f, 1.0f, 1.1111112f, 1, 0.5f, 1, 0.5f);
                    scaleAnimation5.setDuration(Math.round(j * 0.099999964f));
                    scaleAnimation5.setStartOffset(Math.round(j * 0.8f));
                    scaleAnimation5.setFillAfter(true);
                    animationSet2.addAnimation(scaleAnimation5);
                    animationSet = animationSet2;
                } else {
                    ScaleAnimation scaleAnimation6 = new ScaleAnimation(1.0f, 0.0f, 1.0f, 0.0f, 1, 0.5f, 1, 0.5f);
                    scaleAnimation6.setDuration(j);
                    scaleAnimation6.setStartOffset(0L);
                    scaleAnimation6.setFillAfter(true);
                    animationSet2.addAnimation(scaleAnimation6);
                    animationSet = animationSet2;
                }
                break;
            case 3:
                if (z) {
                    azVar2 = new az(-60.0f, 0.0f, width / 2.0f, height / 2.0f, false);
                } else {
                    azVar2 = new az(0.0f, 60.0f, width / 2.0f, height / 2.0f, false);
                }
                azVar2.setDuration(j);
                azVar2.setFillAfter(true);
                animationSet2.addAnimation(azVar2);
                if (z) {
                    scaleAnimation2 = new ScaleAnimation(0.4f, 1.0f, 0.4f, 1.0f);
                } else {
                    scaleAnimation2 = new ScaleAnimation(1.0f, 0.4f, 1.0f, 0.4f);
                }
                scaleAnimation2.setDuration(j);
                scaleAnimation2.setFillAfter(true);
                animationSet2.addAnimation(scaleAnimation2);
                if (z) {
                    translateAnimation2 = new TranslateAnimation(width * f, 0.0f, (-height) * 0.4f, 0.0f);
                } else {
                    translateAnimation2 = new TranslateAnimation(0.0f, width * f, 0.0f, height);
                }
                translateAnimation2.setDuration(j);
                translateAnimation2.setFillAfter(true);
                animationSet2.addAnimation(translateAnimation2);
                animationSet = animationSet2;
                break;
            case 4:
                TranslateAnimation translateAnimation3 = new TranslateAnimation(0.0f, 0.0f, z ? -height : 0.0f, z ? 0.0f : -height);
                translateAnimation3.setDuration(j);
                translateAnimation3.setFillAfter(true);
                animationSet2.addAnimation(translateAnimation3);
                animationSet = animationSet2;
                break;
            case 5:
                TranslateAnimation translateAnimation4 = new TranslateAnimation(0.0f, 0.0f, z ? height : 0.0f, z ? 0.0f : height);
                translateAnimation4.setDuration(j);
                translateAnimation4.setFillAfter(true);
                animationSet2.addAnimation(translateAnimation4);
                animationSet = animationSet2;
                break;
            case 6:
                AlphaAnimation alphaAnimation = z ? new AlphaAnimation(0.0f, 1.0f) : new AlphaAnimation(1.0f, 0.0f);
                alphaAnimation.setDuration(j);
                alphaAnimation.setFillAfter(true);
                AnimationSet animationSet3 = new AnimationSet(true);
                animationSet3.addAnimation(alphaAnimation);
                animationSet = animationSet3;
                break;
            case 7:
            default:
                animationSet = animationSet2;
                break;
            case 8:
                TranslateAnimation translateAnimation5 = new TranslateAnimation(z ? width : 0.0f, z ? 0.0f : width, 0.0f, 0.0f);
                translateAnimation5.setDuration(j);
                translateAnimation5.setFillAfter(true);
                animationSet2.addAnimation(translateAnimation5);
                animationSet = animationSet2;
                break;
            case 9:
                TranslateAnimation translateAnimation6 = new TranslateAnimation(z ? -width : 0.0f, z ? 0.0f : -width, 0.0f, 0.0f);
                translateAnimation6.setDuration(j);
                translateAnimation6.setFillAfter(true);
                animationSet2.addAnimation(translateAnimation6);
                animationSet = animationSet2;
                break;
        }
        if (i == 7) {
            if (runnable != null) {
                runnable.run();
            }
        } else {
            if (runnable != null) {
                this.a.postDelayed(runnable, j);
            }
            view.startAnimation(animationSet);
        }
    }

    public void a(boolean z, View view, com.chartboost.sdk.Model.a aVar) {
        if (aVar.b == 0) {
        }
        a(z, view, 500L);
    }

    public void a(boolean z, View view, long j) {
        view.clearAnimation();
        if (z) {
            view.setVisibility(0);
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(z ? 0.0f : 1.0f, z ? 1.0f : 0.0f);
        alphaAnimation.setDuration(j);
        alphaAnimation.setFillBefore(true);
        view.startAnimation(alphaAnimation);
    }
}
