import 'package:dartz/dartz.dart';
import 'package:elastico/app/core/error/failure.dart';
import 'package:elastico/app/core/usecase/usecase.dart';
import 'package:elastico/app/features/home/domain/entities/home_data.dart';
import 'package:elastico/app/features/home/domain/repositories/home_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetHomeData implements NoParamUsecase<HomeData> {
  final HomeRepository _repository;

  GetHomeData(this._repository);

  @override
  Future<Either<Failure, HomeData>> call() {
    return _repository.getHomeData();
  }
}
