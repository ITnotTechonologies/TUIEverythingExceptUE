#include "TarProjectile_CPP.h"

//GEngine->AddOnScreenDebugMessage(-1, 15.0f, FColor::Yellow, TEXT("hohoho"));

// Sets default values
ATarProjectile_CPP::ATarProjectile_CPP()
{
	PrimaryActorTick.bCanEverTick = true;

	Mesh = CreateDefaultSubobject<UStaticMeshComponent>(TEXT("Mesh Component"));
	RootComponent = Mesh;
	//SceneComp = CreateDefaultSubobject<USceneComponent>(TEXT("Scene Component"));
	static ConstructorHelpers::FObjectFinder<UStaticMesh> MeshAsset(TEXT("/Game/meshes/Missile_AIM-120_D__AMRAAM_.Missile_AIM-120_D__AMRAAM_"));

	if (MeshAsset.Succeeded())
	{
		Mesh->SetStaticMesh(MeshAsset.Object);
		Mesh->SetWorldScale3D(FVector(1.f));
		//Mesh->SetMassScale(NAME_None, weight);
		//Mesh->SetSimulatePhysics(true);
	}

	//ProjectileMovementComponent = CreateDefaultSubobject<UProjectileMovementComponent>(TEXT("ProjectileMovementComponent"));
	//ProjectileMovementComponent->SetUpdatedComponent(Mesh);
	//ProjectileMovementComponent->InitialSpeed = 1500.f;
	//ProjectileMovementComponent->MaxSpeed = 3000.f;
	//ProjectileMovementComponent->bShouldBounce = false;

	//Mesh->AttachTo(RootComponent);
	//Mesh->SetWorldRotation(MoveVector);
	
}

// Called when the game starts or when spawned
void ATarProjectile_CPP::BeginPlay()
{
	Super::BeginPlay();
	//SetActorLocation(StartPos);
	//SetActorRotation(MoveVector);
	SetActorLocationAndRotation(StartPos, MoveVector);
	
	//Mesh->SetSimulatePhysics(true);
	//GEngine->AddOnScreenDebugMessage(-1, 15.0f, FColor::Yellow, GetActorLocation().ToString());
	//GEngine->AddOnScreenDebugMessage(-1, 15.0f, FColor::Yellow, GetActorRotation().ToString());
	//bMove = true;

	//FVector LaunchImpulse = GetActorForwardVector() * InitialImpulseStrength;
	//Mesh->AddImpulse(LaunchImpulse);
}

// Called every frame
void ATarProjectile_CPP::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);
	/*if (bMove)
	{
		SetActorLocation(GetActorLocation() += GetActorForwardVector() * MoveSpeed);
	}*/
	/*else if (a == 1)
	{
		a = 0;
		SetActorLocation(StartPos);
		GEngine->AddOnScreenDebugMessage(-1, 15.0f, FColor::Yellow, GetActorLocation().ToString());
		GEngine->AddOnScreenDebugMessage(-1, 15.0f, FColor::Yellow, GetActorLocation().ToString());
	}*/

}

void ATarProjectile_CPP::SendTarget()
{
	
}

