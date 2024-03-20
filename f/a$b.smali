.class public Lf/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lf/a;


# direct methods
.method private constructor <init>(Lf/a;)V
    .locals 0

    iput-object p1, p0, Lf/a$b;->a:Lf/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lf/a;Lf/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lf/a$b;-><init>(Lf/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lf/a$b;->a:Lf/a;

    invoke-static {v0}, Lf/a;->a(Lf/a;)V

    return-void
.end method
