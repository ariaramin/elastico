import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/home/domain/entities/home_data.dart';
import 'package:elastico/app/features/home/domain/repositories/home_repository.dart';

class GetHomeData extends NoParamUsecase<HomeData> {
  final HomeRepository homeRepository;

  GetHomeData({required this.homeRepository});

  @override
  Future<Either<Failure, HomeData>> call() {
    return homeRepository.getHomeData();
  }
}
