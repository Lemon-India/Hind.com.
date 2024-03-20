.class public final Lc/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/c$a;)V
    .locals 0

    invoke-direct {p0}, Lc/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/analytics/entity/Event;)V
    .locals 0

    invoke-static {p1}, Le/b;->a(Lio/bidmachine/analytics/entity/Event;)V

    return-void
.end method
