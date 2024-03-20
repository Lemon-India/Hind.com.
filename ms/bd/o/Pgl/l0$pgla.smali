.class public interface abstract Lms/bd/o/Pgl/l0$pgla;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lms/bd/o/Pgl/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "pgla"
.end annotation


# virtual methods
.method public abstract frameSign(Ljava/lang/String;I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFeatureHash(Ljava/lang/String;[B)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReportRaw(Ljava/lang/String;ILjava/util/Map;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getToken()Ljava/lang/String;
.end method

.method public abstract report(Ljava/lang/String;)V
.end method

.method public abstract setBDDeviceID(Ljava/lang/String;)V
.end method

.method public abstract setCollectMode(I)V
.end method

.method public abstract setDeviceID(Ljava/lang/String;)V
.end method

.method public abstract setInstallID(Ljava/lang/String;)V
.end method

.method public abstract setSessionID(Ljava/lang/String;)V
.end method
