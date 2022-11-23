import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:pile_of_fame/core/error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(final Params params);
}

class NoParams extends Equatable {
  const NoParams();

  @override
  List<Object> get props => [];
}